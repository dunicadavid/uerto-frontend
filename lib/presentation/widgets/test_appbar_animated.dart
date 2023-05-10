// File created by
// Dunica David-Gabriel <FLTY>
// on 09/05/2023 13:25:29

import 'dart:math';

import 'package:flutter/material.dart';


class AppBarAnimatedUerto extends StatelessWidget {

  const AppBarAnimatedUerto({Key? key, required this.colorFill, required this.width, required this.animation})
      : super(key: key);

  final Animation<double> animation;
  final Color colorFill;
  final double width;




  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return CustomPaint(
            painter: RPSCustomPainter(colorFill: colorFill),
            size: Size(width ,animation.value),
          );
      },
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
    canvas.drawShadow(path, const Color(0x44424242), 3, false);
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
