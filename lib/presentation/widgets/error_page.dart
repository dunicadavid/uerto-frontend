// File created by
// Dunica David-Gabriel <FLTY>
// on 24/12/2022 18:51:22

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';

import '../../models/index.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key ? key}) : super(key: key);

  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('error'),
              GestureDetector(
                onTap: () => StoreProvider.of<AppState>(context).dispatch(const InitializeApp()),
                child: const Text('Try Again!'),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pushReplacementNamed('/main'),
                child: const Text('Tgo to main page!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}