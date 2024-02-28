

import 'package:flutter/material.dart';

import '../widgets/arcfuel.dart';
import '../widgets/batterygauge.dart';
import '../widgets/rpmarc.dart';
import '../widgets/speedgauge.dart';

class Mycircle extends StatelessWidget {
  const Mycircle({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height ;
    final width=MediaQuery.of(context).size.width ;
    print("height : $height,width: $width");      //660,1280
    return  Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(40),
          color:Colors.white,
          child: CustomPaint(
            painter:leftborder() ,
            child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [




                const speedgauge(),

               ///////////////////////////////////////////
                // ///////////////////////////////////




                SizedBox(width: MediaQuery.of(context).size.width*0.10),

              //2nd circle


                const batterygauge(),





              ],
            )),
          ),
        ),
      ));
  }
}





class leftborder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path istpath=Path()
       ..moveTo(size.width*0.5, size.height*0.4)
      // ..quadraticBezierTo(size.width*0.5, size.height*0.6, size.width*0.4, size.height*0.5)
      // ..quadraticBezierTo(size.width*0.25, size.height*0.4, size.width*0.4, size.height*0.3);
     ..lineTo(size.width*0.5, size.height*0.3)
      ..quadraticBezierTo(size.width*0.4, size.height*0.2, size.width*0.3, size.height*0.1)
      ..lineTo(size.width*0.25,size.height*0.1 )
     ..quadraticBezierTo(size.width*0.2, size.height*0.2, size.width*0.3, size.height*0.3);
       // ..lineTo(size.width*0.32,size.height*0.3 );
     // .. lineTo(size.width*0.1,size.height*0.1);


    Paint mypaintleft=Paint()
    ..style=PaintingStyle.stroke
    ..strokeWidth=5
    ..color=Colors.black;
    canvas.drawPath(istpath, mypaintleft);





  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }


}









