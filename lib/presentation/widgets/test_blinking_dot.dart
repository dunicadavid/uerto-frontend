// File created by
// Dunica David-Gabriel <FLTY>
// on 08/06/2023 16:52:37

import 'dart:async';

import 'package:flutter/material.dart';

class BlinkingDot extends StatefulWidget {
  const BlinkingDot({super.key});

  @override
  _BlinkingDotState createState() => _BlinkingDotState();
}

class _BlinkingDotState extends State<BlinkingDot> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 1000), (Timer timer) {
      setState(() {
        _isVisible = !_isVisible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _isVisible ? Colors.amberAccent : Colors.amberAccent.withOpacity(0.3),
        ),
      ),
    );
  }
}
