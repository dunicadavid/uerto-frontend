// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:41:27

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './mixin/init_mixin.dart';
import '../models/index.dart';
import '../presentation/widgets/init_page.dart';

void main() {
  /// ---------RunApp-----------------
  runApp(const UertoApp());
}

class UertoApp extends StatefulWidget {
  const UertoApp({Key? key}) : super(key: key);

  @override
  _UertoApp createState() => _UertoApp();
}

class _UertoApp extends State<UertoApp> with InitMixin<UertoApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data!;
          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Uerto',
              routes: <String, WidgetBuilder>{
                '/': (BuildContext context) => const InitPage(),
              },
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error!;
          }

          return const MaterialApp(
            title: 'Uerto',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
