// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 18:23:18

import 'package:dart_geohash/dart_geohash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:redux/redux.dart';
import 'package:uerto/presentation/widgets/test_appbar.dart';
import 'package:uerto/presentation/widgets/test_hexagon_shape.dart';
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: height - 80,
                width: width,
                child: AnimatedContainer(
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                  child: _listView
                      ? TestPlacesList(controller: _controller, onResultDetails: _onResultDetails)
                      : TestMaps(onResultDetails: _onResultDetails),
                ),
              ),
            ),
          ),
          AppBarUerto(
            colorFill: Theme.of(context).highlightColor,
            width: width,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(top:20,left: 280),
            child: HexagonalShape(
                size: 120,
                colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.03),
                colorStroke: Colors.transparent,
                angle: 0.20943951,
                strokeWidth: 0),
          ),
          Padding(
            padding: const EdgeInsets.only(top:90,left: 280),
            child: HexagonalShape(
                size: 50,
                colorFill: Theme.of(context).secondaryHeaderColor.withOpacity(0.07),
                colorStroke: Colors.transparent,
                angle: -0.523598776,
                strokeWidth: 0),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: SizedBox(
                height: 45,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Theme.of(context).primaryColorDark,
                        size: 30,
                      ),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(const DeletePlaces());
                        Navigator.of(context).pushReplacementNamed('/placeFilter');
                      },
                    ),
                    Text(
                      'Results',
                      style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: 22,
                        fontFamily: 'Plus',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 96,
                      //color: Colors.yellowAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
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
                              child: Icon(Icons.map, color: _listView ? Theme.of(context).primaryColorDark.withOpacity(0.7) : Theme.of(context).secondaryHeaderColor,size: 25),
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
                              child: Icon(Icons.view_list, color: _listView ? Theme.of(context).secondaryHeaderColor : Theme.of(context).primaryColorDark.withOpacity(0.7),size: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
