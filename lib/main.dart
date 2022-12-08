// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:41:27

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uerto/presentation/widgets/login_page.dart';
import 'package:uerto/presentation/widgets/main_page.dart';
import 'package:uerto/presentation/widgets/register_page.dart';

import './mixin/init_mixin.dart';
import '../models/index.dart';
import '../presentation/widgets/init_page.dart';

void main() {
  /// ---------RunApp-----------------
  HttpOverrides.global = MyHttpOverrides(); /// [testing-feature] SSL cert not verified
  runApp(const UertoApp());
}

class UertoApp extends StatefulWidget {
  const UertoApp({Key? key}) : super(key: key);

  @override
  _UertoApp createState() => _UertoApp();
}

/// [testing-feature] SSL cert not verified
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
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
                '/main': (BuildContext context) => const MainPage(),
                '/login': (BuildContext context) => const LoginPage(),
                '/register': (BuildContext context) => const RegisterPage(),
              },
              theme: ThemeData(
                fontFamily: 'Plus',
                primaryColor: const Color(0xff262f4c),
                secondaryHeaderColor: const Color(0xff12FCB2),
              ),
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
