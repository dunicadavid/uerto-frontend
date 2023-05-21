// File created by
// Dunica David-Gabriel <FLTY>
// on 27/12/2022 13:42:43

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uerto/actions/index.dart';

import '../models/index.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80, child: FittedBox(child: Image.asset('assets/images/logo-big.png'),),),
            const SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                StoreProvider.of<AppState>(context).dispatch(const Signout());
                Navigator.of(context).pushReplacementNamed('/login');
              },
              child: Container(
                height: 30,
                width: 30,
                color: Colors.blue.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
