// File created by
// Dunica David-Gabriel <FLTY>
// on 30/11/2022 15:51:47

import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text('VERIFY EMAIL PAGE'),
          GestureDetector(
            onTap: () => Navigator.of(context).pushReplacementNamed('/main'),
            child: Text('go to main page'),
          )
        ],
      )),
    );
  }
}