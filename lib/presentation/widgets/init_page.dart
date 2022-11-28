// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:13:11

import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('welcome there.'),),
    );
  }
}
