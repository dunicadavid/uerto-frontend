// File created by
// Dunica David-Gabriel <FLTY>
// on 18/03/2023 11:35:50

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

class CurrentLocationContainer extends StatelessWidget {
  const CurrentLocationContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<LatLng> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LatLng>(
      converter: (Store<AppState> store) => LatLng(store.state.latitude!, store.state.longitude!),
      builder: builder,
    );
  }
}