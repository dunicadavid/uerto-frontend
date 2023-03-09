// File created by
// Dunica David-Gabriel <FLTY>
// on 09/03/2023 14:08:17

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

class PlaceFiltersContainer extends StatelessWidget {
  const PlaceFiltersContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>?>(
      converter: (Store<AppState> store) => store.state.filters?.asList(),
      builder: builder,
    );
  }
}