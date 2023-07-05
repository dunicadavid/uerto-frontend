//// File created by
// Dunica David-Gabriel <FLTY>
// on 30/03/2023 12:36:21

import 'dart:async';

import 'package:dart_geohash/dart_geohash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uerto/presentation/widgets/test_loading_container.dart';

import '../../actions/index.dart';
import '../../containers/current_location_container.dart';
import '../../containers/places_short_container.dart';
import '../../models/index.dart';
import '../../services/google_maps_style.dart';

class TestMaps extends StatefulWidget {
  const TestMaps({Key? key, required this.onResultDetails})
      : assert(onResultDetails != null),
        super(key: key);

  final Function(AppAction) onResultDetails;
  @override
  _TestMapsState createState() => _TestMapsState();
}

class _TestMapsState extends State<TestMaps> {
  final Completer<GoogleMapController> _mapController = Completer<GoogleMapController>();
  final Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};

  void _onMapCreate(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);
    _mapController.complete(controller);
    setState(() {
      StoreProvider.of<AppState>(context).state.listOfPlaces.asMap().forEach((int index, PlaceShort place) {
        final GeoHash placeHash = GeoHash(place.geohash!);
        _markers.addAll(
          <MarkerId, Marker>{
            MarkerId(place.idplace.toString()): Marker(
              markerId: MarkerId(place.idplace.toString()),
              position: LatLng(placeHash.latitude(), placeHash.longitude()),
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
              onTap: () => _onMarkerPressed(index),
            ),
          },
        );
      });
    });
  }

  void _onMarkerPressed(int index) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.1),
      elevation: 10,
      context: context,
      builder: (BuildContext context) {
        return PlacesShortContainer(
          builder: (BuildContext context, List<PlaceShort> places) {
            final double height = MediaQuery.of(context).size.height;
            final double width = MediaQuery.of(context).size.width;
            return Container(
              color: Colors.transparent,
              height: 330,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xddD1D1D1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        height: 4,
                        width: width * 0.15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * 0.05,
                        top: 15,
                        right: width * 0.05,
                        bottom: 0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const DeletePlaceActivities());
                          StoreProvider.of<AppState>(context).dispatch(GetPlaceDetails(places[index].idplace,
                              StoreProvider.of<AppState>(context).state.user!.userId, widget.onResultDetails));
                          Navigator.of(context).pushReplacementNamed('/result_page');
                        },
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Container(
                                  height: 200,
                                  width: width*0.9,
                                  child: places[index].imageFirst != null ? Image.network(
                                    'https://10.0.2.2:3000/images/places/${places[index].imageFirst}',
                                    fit: BoxFit.cover,
                                  ) : const Center(child: LeftToRightLoadingContainer()),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 0,
                                top: 20,
                                right: 0,
                                bottom: width * 0.005,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      //color: Colors.amber,
                                      width: width * 0.55,
                                      height: height * 0.035,
                                      child: FittedBox(
                                        child: Text(
                                          places[index].name,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'FontB',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      alignment: Alignment.center,
                                      height: height * 0.03,
                                      width: height * 0.03,
                                      padding: const EdgeInsets.symmetric(vertical: 2),
                                      child: FittedBox(
                                        child: Icon(
                                          Icons.star_rounded,
                                          color: Theme.of(context).highlightColor,
                                        ),
                                      ),
                                    ),
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      alignment: Alignment.center,
                                      height: height * 0.035,
                                      width: height * 0.035,
                                      child: FittedBox(
                                        child: Text(
                                          places[index].rating.toStringAsFixed(1),
                                          style: const TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'FontB',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    //color: Colors.greenAccent,
                                    width: width * 0.6,
                                    height: height * 0.03,
                                    child: FittedBox(
                                      child: Text(
                                        places[index].location,
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    alignment: Alignment.topRight,
                                    //color: Colors.amber,
                                    height: height * 0.03,
                                    width: height * 0.12,
                                    child: FittedBox(
                                      child: Text(
                                        (r'$' * places[index].price).toString(),
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context).textTheme.bodySmall
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return CurrentLocationContainer(builder: (BuildContext context, LatLng location) {
      return Stack(
        children: <Widget>[
          GoogleMap(
            padding: EdgeInsets.only(
              bottom: height * 0.075,
              top: 0,
              right: 0,
              left: 0,
            ),
            markers: _markers.values.toSet(),
            onMapCreated: _onMapCreate,
            mapToolbarEnabled: false,
            myLocationEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: location,
              zoom: 13,
            ),
          ),
        ],
      );
    });
  }
}
