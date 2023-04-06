// File created by
// Dunica David-Gabriel <FLTY>
// on 06/04/2023 13:34:08

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/models/index.dart';

class RateRequestListContainer extends StatelessWidget {
  const RateRequestListContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<RateRequest>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<RateRequest>>(
      converter: (Store<AppState> store) => store.state.listOfRateRequest!.toList(),
      builder: builder,
    );
  }
}