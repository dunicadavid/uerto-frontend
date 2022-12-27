// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:43:06

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';
import '../init/init.dart';
import '../models/index.dart';

mixin InitMixin<S extends StatefulWidget> on State<S> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    super.initState();
    _initStore();
  }

  Future<void> _initStore() async {
    final List<FutureOr<Store<AppState>>?> result = await ConcatStream<FutureOr<Store<AppState>>?>(<Stream<FutureOr<Store<AppState>>?>>[
      init().asStream(),
      Future<FutureOr<Store<AppState>>?>.delayed(const Duration(seconds: 3)).asStream(),
    ]).toList();

    _completer //
        .complete(result[0]);
  }

  Future<Store<AppState>> get future => _completer.future;
}
