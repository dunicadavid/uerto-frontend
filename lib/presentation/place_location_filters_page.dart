// File created by
// Dunica David-Gabriel <FLTY>
// on 18/03/2023 11:35:24

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uerto/actions/index.dart';
import 'package:uerto/containers/current_location_container.dart';
import 'package:uerto/presentation/widgets/test_standard_button_with_change.dart';

import '../models/index.dart';
import '../services/google_maps_style.dart';

class PlaceLocationFiltersPage extends StatefulWidget {
  const PlaceLocationFiltersPage({Key? key}) : super(key: key);

  @override
  _PlaceLocationFiltersPageState createState() => _PlaceLocationFiltersPageState();
}

class _PlaceLocationFiltersPageState extends State<PlaceLocationFiltersPage> {

  final Completer<GoogleMapController> _mapController = Completer<GoogleMapController>();
  final Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
  int _markerIdCounter = 0;
  late LatLng _mapPosition;

  String _markerIdVal({bool increment = false}) {
    final String val = 'marker_id_$_markerIdCounter';
    if (increment) {
      _markerIdCounter++;
    }
    return val;
  }

  void _onMapCreate(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);


    if (StoreProvider.of<AppState>(context).state.latitude != null && StoreProvider.of<AppState>(context).state.longitude != null) {
      final MarkerId markerId = MarkerId(_markerIdVal());
      final LatLng position = LatLng(StoreProvider.of<AppState>(context).state.latitude!, StoreProvider.of<AppState>(context).state.longitude!);
      final Marker marker = Marker(
        markerId: markerId,
        position: position,
        draggable: false,
      );
      setState(() {
        _markers[markerId] = marker;
      });

      Future.delayed(const Duration(seconds: 1), () async {
        final GoogleMapController controller = await _mapController.future;
        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: position,
              zoom: 15.0,
            ),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return CurrentLocationContainer(
      builder: (BuildContext context, LatLng location) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              SizedBox(
                height: _height * 0.8,
                width: _width,
                child: GoogleMap(
                  padding: EdgeInsets.only(
                    bottom: _height * 0.075,
                    top: 0,
                    right: 0,
                    left: 0,
                  ),
                  mapToolbarEnabled: false,
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  onMapCreated: _onMapCreate,
                  initialCameraPosition: CameraPosition(
                    target: location,
                    zoom: 15,
                  ),
                  markers: Set<Marker>.of(_markers.values),
                  onCameraMove: (CameraPosition position) {
                    if(_markers.isNotEmpty) {
                      final MarkerId markerId = MarkerId(_markerIdVal());
                      final Marker? marker = _markers[markerId];
                      final Marker updatedMarker = marker!.copyWith(
                        positionParam: position.target,
                      );
                      setState(() {
                        _markers[markerId] = updatedMarker;
                        _mapPosition = updatedMarker.position;
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _height * 0.73),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0x20000000),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  height: _height * 0.27,
                  width: _width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        //color: Colors.amber,
                        height: _height * 0.03,
                      ),
                      SizedBox(
                        //color: Colors.greenAccent,
                        height: _height * 0.024,
                        child: const FittedBox(
                          child: Text(
                            'Select on map searching area',
                            style: TextStyle(

                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 1.5,
                        color: const Color(0xFFF1F1F1),
                        endIndent: _width * 0.08,
                        indent: _width * 0.08,
                      ),
                      Expanded(child: Container()),
                      GestureDetector(
                        child: const StandardButtonWithChange(isLoading: false, isReady: true),
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(UpdateLocation(_mapPosition));
                          Navigator.of(context).pushReplacementNamed('/placeFilter');
                        },
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.05,
                    vertical: _height * 0.022,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/placeFilter');
                    },
                    child: Container(
                      height: _width * 0.11,
                      width: _width * 0.11,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color(0x20000000),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(1, 8),
                        )
                      ]),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: const Color(0xff4c54ef),
                        size: _width * 0.06,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


