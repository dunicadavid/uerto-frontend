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
  bool _isLoading = false;
  Timer? timer;

  Future<void> getSearchedPlaces() async {
    setState(() {
      if (_nameSearched.text != lastNameSearched) {
        lastNameSearched = _nameSearched.text;
        if (_nameSearched.text != '' && _nameSearched.text != ' ') {
          _isLoading = true;
          StoreProvider.of<AppState>(context)
              .dispatch(GetPlacesSearched(_nameSearched.text, 5, _onResultGetSearchedPlaces));
        } else if (_nameSearched.text == '') {
          StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
        }
      }
    });
  }

  void _onResultGetSearchedPlaces(AppAction action) {
    _isLoading = false;
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    }
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
                    decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3), // Offset to give a bottom shadow effect
                        ),
                      ],
                    ),
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
                              color: Theme.of(context).primaryColorDark,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 310,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TextField(
                              controller: _nameSearched,
                              cursorColor: Theme.of(context).secondaryHeaderColor,
                              style:
                                  TextStyle(color: Theme.of(context).secondaryHeaderColor, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'search',
                                hintStyle: TextStyle(
                                    color: Theme.of(context).secondaryHeaderColor.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (placesSearched!.isNotEmpty)
                    Container(
                      alignment: Alignment.topCenter,
                      height: 450,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 10.0),
                        physics: const BouncingScrollPhysics(),
                        itemCount: placesSearched.length +
                            (StoreProvider.of<AppState>(context).state.listOfPlacesSearchedNextPage != 0 ? 1 : 0),
                        itemBuilder: (BuildContext context, int index) {
                          if (index != placesSearched.length) {
                            final PlaceShort place = placesSearched[index];
                            return ListTile(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                timer?.cancel(); // dont need
                                _nameSearched.clear();
                                StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
                                if (StoreProvider.of<AppState>(context).state.placeDetails != null) {
                                  if (place.idplace !=
                                      StoreProvider.of<AppState>(context).state.placeDetails?.idplace) {
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
                              leading: const Icon(
                                Icons.home_work_outlined,
                                size: 26,
                                color: Color(0x5524272c),
                              ),
                              title: Text(
                                place.name,
                                style: const TextStyle(
                                  color: Color(0xff24272c),
                                  fontSize: 16.0,
                                  fontFamily: 'Plus',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                place.location,
                                style: const TextStyle(
                                  color: Color(0x5524272c),
                                  fontSize: 12.0,
                                  fontFamily: 'Plus',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  StoreProvider.of<AppState>(context).dispatch(
                                      GetPlacesSearchedAll(_nameSearched.text, 5, _onResultGetSearchedPlacesAll));
                                },
                                child: const Text(
                                  'See all results..',
                                  style: TextStyle(
                                    color: Color(0xff24272c),
                                    fontSize: 16.0,
                                    fontFamily: 'Plus',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    )
                  else if (placesSearched.isEmpty && _nameSearched.text == '')
                    Container()
                  else if (placesSearched.isEmpty && _nameSearched.text != '' && _isLoading == false)
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 50,),
                        const Text('No results found for', style: TextStyle(
                          color: Color(0xaa24272c),
                          fontSize: 16.0,
                          fontFamily: 'Plus',
                          fontWeight: FontWeight.normal,
                        ),),
                        Text(_nameSearched.text, style: const TextStyle(
                          color: Color(0xff24272c),
                          fontSize: 20.0,
                          fontFamily: 'Plus',
                          fontWeight: FontWeight.bold,
                        ),),
                        const SizedBox(height: 50,),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(height: 30,),
                        const Text('Try searching for something else', style: TextStyle(
                          color: Color(0xaa24272c),
                          fontSize: 16.0,
                          fontFamily: 'Plus',
                          fontWeight: FontWeight.normal,
                        ),),
                      ],
                    )
                ],
              ),
              // Container(
              //   color: Colors.red,
              //   height: 2,
              //   width: MediaQuery.of(context).size.width,
              //   margin: const EdgeInsets.only(top: 105.0),
              // ),
            ],
          ),
        );
      },
    );
  }
}
