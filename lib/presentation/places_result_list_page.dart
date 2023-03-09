// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 18:23:18

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../actions/index.dart';
import '../../containers/places_short_container.dart';
import '../../models/index.dart';

class PlacesResultListPage extends StatefulWidget {
  const PlacesResultListPage({Key? key}) : super(key: key);

  @override
  _PlacesResultListPageState createState() => _PlacesResultListPageState();
}

class _PlacesResultListPageState extends State<PlacesResultListPage> {
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
      store.dispatch(GetPlaces('', store.state.category!, _onResultPlaces));
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
     Navigator.pushReplacementNamed(context, '/placeDetails');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PlaceResultPage'),
          leading: IconButton(
            icon: const Icon(Icons.backspace_outlined),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
              Navigator.of(context).pushReplacementNamed('/placeFilter');
            },
          ),
        ),
        body: PlacesShortContainer(
          builder: (BuildContext context, List<PlaceShort> places) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2,
                  ),
                  controller: _controller,
                  itemCount: places.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final PlaceShort place = places[index];

                    return GestureDetector(
                      onTap: () {
                        if(StoreProvider.of<AppState>(context).state.placeDetails != null) {
                          if (place.idplace != StoreProvider.of<AppState>(context).state.placeDetails?.idplace) {
                            StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                            StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, _onResultDetails));
                          } else {
                            Navigator.of(context).pushReplacementNamed('/placeDetails');
                          }
                        } else {
                          StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                          StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(place.idplace, StoreProvider.of<AppState>(context).state.user!.userId, _onResultDetails));
                        }
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          backgroundColor: Colors.black38,
                          title: Text(place.name),
                          subtitle: Text(place.location),
                        ),
                        child: Image.network(
                          'https://img.toolstud.io/166x240/3b5998/fff&text=+A/R:0.69+',
                          fit: BoxFit.cover,
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