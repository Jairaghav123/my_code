

import 'package:flutter/material.dart';

import '../../constants.dart';




class SpeedLinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    double strokewidth=8 ;
    Paint paintTop=Paint()
      ..style=PaintingStyle.fill
      ..color=primarycolor ;
    //we can use gradient also

    // ..shader= ui.radient.linear(Offset(0, 0)
    // ,Offset(size.width, size.height),
    // [primarycolor,const Color(0xFFD7472).withOpacity(0.8),],);


    Path pathTop=Path()
      ..moveTo(size.width * 0.78, 0)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width-strokewidth, size.height * 0.3)
      ..close();


    Path pathBottom =Path()
      ..moveTo(size.width, size.height* 0.3)
      ..lineTo(40, size.height-20)
      ..lineTo(size.width-strokewidth, size.height * 0.3)
      ..close();

    canvas.drawPath(pathTop, paintTop);
    canvas.drawPath(pathBottom, paintTop);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }



}