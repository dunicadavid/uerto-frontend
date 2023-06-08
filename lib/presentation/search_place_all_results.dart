import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../containers/places_searched_short_container.dart';
import '../models/index.dart';

class SearchPlaceAllResults extends StatefulWidget {
  const SearchPlaceAllResults({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  _SearchPlaceAllResultsState createState() => _SearchPlaceAllResultsState();
}

class _SearchPlaceAllResultsState extends State<SearchPlaceAllResults> {
  final ScrollController _controller = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(GetPlacesSearchedAll(widget.name, 5, _onResultPlaces));
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final double max = _controller.position.maxScrollExtent;
    final double offset = _controller.offset;
    final double delta = max - offset;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double threshold = screenHeight * 0.5;

    if (delta < threshold &&
        store.state.listOfPlacesSearchedNextPage != 0 &&
        _isLoading == false &&
        store.state.category != null) {
      _isLoading = true;
      store.dispatch(GetPlacesSearchedAll(widget.name, 5, _onResultPlaces));
    }
  }

  void _onResultPlaces(AppAction action) {
    setState(() {
      _isLoading = false;
    });
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

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PlacesSearchedShortContainer(
        builder: (BuildContext context, List<PlaceShort>? placesSearched) {
          return Column(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched$());
                          Navigator.of(context).pushReplacementNamed('/placeSearch');
                        },
                        child: Icon(
                          CupertinoIcons.back,
                          color: Theme.of(context).primaryColorDark,
                          size: 30,
                        ),
                      ),
                      const Text('Results', style:TextStyle(
                        color: Color(0xff24272c),
                        fontSize: 22.0,
                        fontFamily: 'Plus',
                        fontWeight: FontWeight.bold,
                      ),),
                      Icon(
                        CupertinoIcons.back,
                        color: Colors.transparent,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height - 120,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  controller: _controller,
                  itemCount: placesSearched!.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final PlaceShort place = placesSearched[index];
                    return ListTile(
                      onTap: () {
                        StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched());
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
                          StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(
                              place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, _onResultDetails));
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
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
