// File created by
// Dunica David-Gabriel <FLTY>
// on 17/04/2023 11:53:20


import 'dart:math';

import 'package:flutter/material.dart';


class HexagonalShapeCheckBox extends StatelessWidget {

  const HexagonalShapeCheckBox({Key? key, required this.size, required this.color, required this.onChange})
      : super(key: key);
  final double size;
  final Color color;
  final bool onChange;


  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi/2,
      child: CustomPaint(
        size: Size(size, size),
        painter: RPSCustomPainter(color: color, onChange: onChange),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {

  RPSCustomPainter({required this.color, required this.onChange});
  final Color color;
  final bool onChange;

  @override
  void paint(Canvas canvas, Size size) {

    final Path path_0 = Path();
    path_0.moveTo(size.width*0.4609375,size.height*0.02255274);
    path_0.arcToPoint(Offset(size.width*0.5390625,size.height*0.02255274),radius: Radius.elliptical(size.width*0.07812500, size.height*0.07812500),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.8939502,size.height*0.2274473);
    path_0.arcToPoint(Offset(size.width*0.9330127,size.height*0.2951055),radius: Radius.elliptical(size.width*0.07812500, size.height*0.07812500),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.9330127,size.height*0.7048945);
    path_0.arcToPoint(Offset(size.width*0.8939502,size.height*0.7725527),radius: Radius.elliptical(size.width*0.07812500, size.height*0.07812500),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.5390625,size.height*0.9774473);
    path_0.arcToPoint(Offset(size.width*0.4609375,size.height*0.9774473),radius: Radius.elliptical(size.width*0.07812500, size.height*0.07812500),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.1060498,size.height*0.7725527);
    path_0.arcToPoint(Offset(size.width*0.06698730,size.height*0.7048945),radius: Radius.elliptical(size.width*0.07812500, size.height*0.07812500),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.06698730,size.height*0.2951055);
    path_0.arcToPoint(Offset(size.width*0.1060498,size.height*0.2274473),radius: Radius.elliptical(size.width*0.07812500, size.height*0.07812500),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.4609375,size.height*0.02255274);

    if(onChange) {
      final Paint paint0Fill = Paint()..style=PaintingStyle.fill;
      paint0Fill.color = color.withOpacity(1.0);
      canvas.drawPath(path_0,paint0Fill);
      const IconData icon = Icons.check_rounded;
      final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: String.fromCharCode(icon.codePoint),
          style: TextStyle(
            fontFamily: icon.fontFamily,
            fontSize: size.width / 2,
            color: Colors.white,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      final Offset textOffset = Offset(
        size.width / 2 - textPainter.width / 2,
        size.height / 2 - textPainter.height / 2,
      );
      textPainter.paint(canvas, textOffset);
    } else {
      final Paint paintBorder = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..color = color.withOpacity(1.0);
      final Paint paintFill = Paint()..color = Colors.white.withOpacity(0.0);
      canvas.drawPath(path_0, paintFill);
      canvas.drawPath(path_0, paintBorder);
      canvas.rotate(90);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
