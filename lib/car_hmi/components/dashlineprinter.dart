



import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';

class MyDashline extends  CustomPainter{

  final double progress ;
  MyDashline(this.progress);
  @override
  void paint(Canvas canvas, Size size) {


    Paint paint =Paint()
      ..style=PaintingStyle.stroke
      ..strokeWidth=8
      ..color=primarycolor;

    Path path=Path()
      ..moveTo(0, size.height/2)
      ..lineTo(size.width*progress, size.height/2);






    Path Dashpath=Path();
    double width=24;
    double space=2;
    double distance=0;

    for(PathMetric pathMetric in path.computeMetrics())
    {
      while(distance < pathMetric.length )
      {
        Dashpath.addPath(pathMetric.extractPath(distance, distance + width), Offset.zero);


        distance+=width;
        distance+=space ;
      }


      canvas.drawPath(Dashpath, paint);

    }

  }

  @override
  bool shouldRepaint(MyDashline oldDelegate) {

    return oldDelegate.progress!=progress ;
  }

}











class Batteryclipper extends CustomClipper<Path>
{
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path= Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width*0.05, 0)
      ..lineTo(size.width*0.95, 0)
      ..lineTo(size.width, size.height);


    return path ;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true ;
  }

}



