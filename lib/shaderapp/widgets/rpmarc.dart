


import 'package:flutter/material.dart';

class Myarcrpm extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {



    Paint paint=Paint()
      ..color=Colors.tealAccent
      ..strokeWidth=10
      ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.round;


    Path arc=Path()
      ..moveTo(size.width*0.0, size.height*0.0)
      ..arcToPoint(Offset(size.width*0.0, size.height*1),radius:const Radius.circular(235));

    canvas.drawPath(arc, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}

