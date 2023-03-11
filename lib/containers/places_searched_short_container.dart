// File created by
// Dunica David-Gabriel <FLTY>
// on 11/03/2023 14:49:26

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/models/index.dart';

class PlacesSearchedShortContainer extends StatelessWidget {
  const PlacesSearchedShortContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<PlaceShort>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<PlaceShort>?>(
      converter: (Store<AppState> store) => store.state.listOfPlacesSearched?.asList(),
      builder: builder,
    );
  }
}