



import 'package:flutter/material.dart';


class myroad extends StatefulWidget {
  const myroad({super.key});

  @override
  State<myroad> createState() => _myroadState();
}

class _myroadState extends State<myroad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Rivian Instrument Cluster Background'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF182848), // Dark blue
              Color(0xFF2B4E73), // Slightly lighter blue
            ],
          ),
        ),
        child:  Center(
          child:Container(
            width:150,
            height:300,

            child: CustomPaint(
                painter: myroadpath()
            ),
          ),

        ),
      ),

    );
  }
}





class myroadpath extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path mypath=Path()
      ..moveTo(size.width*0, size.height*1)
      ..lineTo(size.width*0, size.height*0.00)
      ..lineTo(size.width*0.2, size.height*0.05)
      ..lineTo(size.width*0.8, size.height*0.05)
      ..lineTo(size.width*1, size.height*0.00)


      ..lineTo(size.width*1, size.height*1)
      ..lineTo(size.width*0.8, size.height*0.95)
      ..lineTo(size.width*0.2, size.height*0.95)
      ..lineTo(size.width*0, size.height*1);

    Rect myrect=Rect.fromCenter(center: Offset(size.width/2, size.height/2), width:size.width*0.6, height: size.height*0.9);

    Path mypathrect=Path()
      ..moveTo(size.width/2, size.height/2);

    // ..addRect(myrect);
    Paint myinnerrect=Paint()
      ..color=Colors.grey;


    canvas.drawRect(myrect, myinnerrect);





    Paint paint=Paint()
      ..style=PaintingStyle.fill
      ..strokeWidth=5
      ..color=Colors.white38;


    canvas.drawPath(mypath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }

}