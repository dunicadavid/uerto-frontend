// File created by
// Dunica David-Gabriel <FLTY>
// on 12/12/2022 16:27:51

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/models/index.dart';

class PlacesShortContainer extends StatelessWidget {
  const PlacesShortContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<PlaceShort>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<PlaceShort>>(
      converter: (Store<AppState> store) => store.state.listOfPlaces.asList(),
      builder: builder,
    );
  }
}