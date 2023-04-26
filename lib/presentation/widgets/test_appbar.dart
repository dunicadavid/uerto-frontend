// File created by
// Dunica David-Gabriel <FLTY>
// on 26/04/2023 14:52:30

import 'dart:math';

import 'package:flutter/material.dart';


class AppBarUerto extends StatelessWidget {

  const AppBarUerto({Key? key, required this.colorFill, required this.width, required this.height})
      : super(key: key);

  final Color colorFill;
  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RPSCustomPainter(colorFill: colorFill),
      size: Size(width, height),
    );
  }
}

class RPSCustomPainter extends CustomPainter {

  RPSCustomPainter({required this.colorFill});
  final Color colorFill;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final Path path = Path();
    path.lineTo(0, size.height - size.height / 8);
    path.conicTo(size.width / 1.2, size.height, size.width, size.height - size.height / 8, 9);
    path.lineTo(size.width, 0);
    canvas.drawShadow(path, const Color(0xff424242), 4, false);
    path.close();
    final Paint paint = Paint();
    paint.color = colorFill;
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
