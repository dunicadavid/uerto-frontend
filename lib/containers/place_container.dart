// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 21:19:34

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

class PlaceContainer extends StatelessWidget {
  const PlaceContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Place?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Place?>(
      converter: (Store<AppState> store) => store.state.placeDetails,
      builder: builder,
    );
  }
}