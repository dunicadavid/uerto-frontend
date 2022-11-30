// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:50:40

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:uerto/models/index.dart';

import '../../actions/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.of(context).pushReplacementNamed('/main');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text('LOGIN PAGE'),
            GestureDetector(
              onTap: () =>
                  StoreProvider.of<AppState>(context).dispatch(Login('dgdunica@yahoo.com', '123123', _onResult)),
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
