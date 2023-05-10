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
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 150), (_) => getSearchedPlaces());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return PlacesSearchedShortContainer(
      builder: (BuildContext context, List<PlaceShort>? placesSearched) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: width,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    color: Theme.of(context).highlightColor,
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
                              Navigator.of(context).pushReplacementNamed('/main');
                            },
                            child: Icon(
                              CupertinoIcons.back,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            height: 40,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TextField(
                              controller: _nameSearched,
                              cursorColor: Theme.of(context).secondaryHeaderColor,
                              style: TextStyle(color: Theme.of(context).secondaryHeaderColor, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'search',
                                hintStyle: TextStyle(color: Theme.of(context).secondaryHeaderColor.withOpacity(0.6), fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (placesSearched!.isNotEmpty)
                    Container(
                      height: 400,
                      //color:Colors.blue,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: placesSearched.length +
                            (StoreProvider.of<AppState>(context).state.listOfPlacesSearchedNextPage != 0 ? 1 : 0),
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
                                StoreProvider.of<AppState>(context)
                                    .dispatch(GetPlacesSearchedAll(_nameSearched.text, 5, _onResultGetSearchedPlacesAll));
                              },
                              child: const Text(
                                'See all results..',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            );
                          }
                        },
                      ),
                    )
                  else
                    const Center(
                      child: Text('There are no places with this name.'),
                    ),
                ],
              ),
              Container(
                color: Colors.red,
                height: 2,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 105.0),
              ),
            ],
          ),
        );
      },
    );
  }
}
