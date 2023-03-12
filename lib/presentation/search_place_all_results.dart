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

    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final double max = _controller.position.maxScrollExtent;
    final double offset = _controller.offset;
    final double delta = max - offset;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double threshold = screenHeight * 0.5;

    if (delta < threshold && store.state.listOfPlacesNextPage != 0 && _isLoading == false && store.state.category != null) {
      _isLoading = true;
      store.dispatch(GetPlacesSearchedAll(widget.name, store.state.listOfPlacesSearchedNextPage, _onResultPlaces));
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Results for ${widget.name}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            StoreProvider.of<AppState>(context).dispatch(const DeletePlacesSearched$());
            Navigator.of(context).pushReplacementNamed('/placeSearch');
          },
        ),
      ),
      body:  PlacesSearchedShortContainer(
        builder: (BuildContext context, List<PlaceShort>? placesSearched) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 4,
            ),
            controller: _controller,
            itemCount: placesSearched!.length,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final PlaceShort place = placesSearched[index];
              return GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
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
                  child: GridTileBar(
                    backgroundColor: index.isEven ? Colors.black38 : Colors.black12,
                    title: Text(place.name,style: const TextStyle(color: Colors.black),),
                    subtitle: Text(place.location,style: const TextStyle(color: Colors.black),),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
