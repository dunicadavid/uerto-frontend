// File created by
// Dunica David-Gabriel <FLTY>
// on 07/03/2023 16:27:02

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/models/index.dart';

class ReservationsFutureContainer extends StatelessWidget {
  const ReservationsFutureContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Reservation>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Reservation>>(
      converter: (Store<AppState> store) => store.state.listOfFutureReservations!.toList(),
      builder: builder,
    );
  }
}