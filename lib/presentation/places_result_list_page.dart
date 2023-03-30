// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 18:23:18

import 'package:dart_geohash/dart_geohash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:redux/redux.dart';
import 'package:uerto/presentation/widgets/test_maps.dart';
import 'package:uerto/presentation/widgets/test_places_list.dart';

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
  bool _listView = true;

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

    if (delta < threshold &&
        store.state.listOfPlacesNextPage != 0 &&
        _isLoading == false &&
        store.state.category != null) {
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
        actions: [
          IconButton(
            onPressed: () {
              if (_listView == true) {
                setState(() {
                  _listView = false;
                });
              }
            },
            icon: AnimatedContainer(
              duration: const Duration(seconds: 1),
              child: Icon(Icons.map, color: _listView ? Colors.white24 : Colors.white),
            ),
          ),
          IconButton(
            onPressed: () {
              if (_listView == false) {
                setState(() {
                  _listView = true;
                });
              }
            },
            icon: AnimatedContainer(
              duration: const Duration(seconds: 1),
              child: Icon(Icons.list, color: _listView ? Colors.white : Colors.white24),
            ),
          ),
        ],
      ),
      body: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: const Duration(seconds: 1),
        child: _listView
            ? TestPlacesList(controller: _controller, onResultDetails: _onResultDetails)
            : TestMaps(onResultDetails: _onResultDetails),
      ),
    );
  }
}
