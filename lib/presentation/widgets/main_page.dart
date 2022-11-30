// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:43

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';

import '../../models/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Text('MAIN PAGE'),
            GestureDetector(
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(const Signout());
                Navigator.of(context).pushReplacementNamed('/login');
              },
              child: const Text('Signout'),
            ),
          ],
        ),
      ),
    );
  }
}