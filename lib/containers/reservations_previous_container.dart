// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 16:29:30

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/models/index.dart';

class ReservationsPreviousContainer extends StatelessWidget {
  const ReservationsPreviousContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Reservation>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Reservation>>(
      converter: (Store<AppState> store) => store.state.listOfPreviousReservations!.toList(),
      builder: builder,
    );
  }
}