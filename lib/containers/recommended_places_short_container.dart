// File created by
// Dunica David-Gabriel <FLTY>
// on 09/04/2023 12:05:53

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/models/index.dart';

class RecommendedPlacesShortContainer extends StatelessWidget {
  const RecommendedPlacesShortContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<PlaceShort>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<PlaceShort>>(
      converter: (Store<AppState> store) => store.state.listOfPlacesRecommended!.toList(),
      builder: builder,
    );
  }
}