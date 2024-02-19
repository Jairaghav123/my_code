


import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';

class HmiShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {


    //first we are creating the starting point

    Path path = Path()
      ..moveTo(0, size.height/2)
      ..lineTo(size.width*0.13, size.height*0.05)
      ..lineTo(size.width*0.31, 0)
      ..lineTo(size.width*0.39, size.height*0.11)
      ..lineTo(size.width*0.60, size.height*0.11)
      ..lineTo(size.width*0.69, size.height*0.00)
      ..lineTo(size.width*0.87, size.height*0.05)
      ..lineTo(size.width*1, size.height*0.5)

    //below part

      ..lineTo(size.width*0.87, size.height*0.95)
      ..lineTo(size.width*0.13, size.height*0.95)
      ..close();


    Paint paint =Paint()
      ..style=PaintingStyle.stroke
      ..strokeWidth=8
      ..color=primarycolor;

    canvas.drawPath(path, paint);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }

}