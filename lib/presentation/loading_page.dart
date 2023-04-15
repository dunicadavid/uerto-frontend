// File created by
// Dunica David-Gabriel <FLTY>
// on 27/12/2022 13:42:43

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';

import '../models/index.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key ? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Center(
              child: CircularProgressIndicator(),
            ),
            GestureDetector(
              onTap: () => StoreProvider.of<AppState>(context).dispatch(const Signout()),
              child: Container(
                height: 30,
                width: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
