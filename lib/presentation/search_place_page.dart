// File created by
// Dunica David-Gabriel <FLTY>
// on 10/03/2023 16:15:22

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/places_searched_short_container.dart';
import 'package:uerto/presentation/search_place_all_results.dart';

import '../containers/user_container.dart';
import '../models/index.dart';

class SearchPlacePage extends StatefulWidget {
  const SearchPlacePage({Key? key}) : super(key: key);

  @override
  _SearchPlacePageState createState() => _SearchPlacePageState();
}

class _SearchPlacePageState extends State<SearchPlacePage> {
  final TextEditingController _nameSearched = TextEditingController();
  String lastNameSearched = '';
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 150), (_) => getSearchedPlaces());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> getSearchedPlaces() async {
    setState(() {
      if (_nameSearched.text != lastNameSearched) {
        lastNameSearched = _nameSearched.text;
        if (_nameSearched.text != '' && _nameSearched.text != ' ') {
          StoreProvider.of<AppState>(context).dispatch(GetPlacesSearched(_nameSearched.text, 5));
        } else if (_nameSearched.text == '') {
          StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
        }
      }
    });
  }

  void _onResultDetails(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushNamed(context, '/placeDetails');
    }
  }

  void _onResultGetSearchedPlacesAll(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => SearchPlaceAllResults(name: _nameSearched.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlacesSearchedShortContainer(
      builder: (BuildContext context, List<PlaceShort>? placesSearched) {
        return Scaffold(
          backgroundColor: const Color(0xffF0F0F0),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff262f4c),
            leading: GestureDetector(
                onTap: () {
                  timer?.cancel(); // dont need
                  StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
                  Navigator.of(context).pushReplacementNamed('/main');
                },
                child: const Icon(
                  CupertinoIcons.back,
                  color: Color(0xff12FCB2),
                )),
            title: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0x24000000),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _nameSearched,
                  cursorColor: const Color(0xff12FCB2),
                  style: const TextStyle(color: Color(0xffF0F0F0), fontWeight: FontWeight.bold),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ),
            ),
          ),
          body: placesSearched!.isNotEmpty
              ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: placesSearched.length + (StoreProvider.of<AppState>(context).state.listOfPlacesSearchedNextPage != 0  ? 1 : 0),
                  itemBuilder: (BuildContext context, int index) {
                    if (index != placesSearched.length) {
                      final PlaceShort place = placesSearched[index];
                      return ListTile(
                        onTap: () {
                          timer?.cancel(); // dont need
                          if (StoreProvider.of<AppState>(context).state.placeDetails != null) {
                            if (place.idplace != StoreProvider.of<AppState>(context).state.placeDetails?.idplace) {
                              StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                              StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(place.idplace,
                                  StoreProvider.of<AppState>(context).state.user!.userId, _onResultDetails));
                            } else {
                              Navigator.of(context).pushReplacementNamed('/placeDetails');
                            }
                          } else {
                            StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                            StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(place.idplace,
                                StoreProvider.of<AppState>(context).state.user!.userId, _onResultDetails));
                          }
                        },
                        title: Text(
                          place.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(place.location),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(GetPlacesSearchedAll(_nameSearched.text, 5, _onResultGetSearchedPlacesAll));
                        },
                        child: const Text(
                          'See all results..',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      );
                    }
                  },
                )
              : const Center(
                  child: Text('There are no places with this name.'),
                ),
        );
      },
    );
  }
}
