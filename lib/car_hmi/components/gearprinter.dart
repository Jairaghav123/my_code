

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';




class gears extends StatefulWidget {
  const gears({super.key, required this.constraints});
  final BoxConstraints constraints ;
  @override
  State<gears> createState() => _gearsState();
}

class _gearsState extends State<gears> {
  final List<String> gears =["S","D","N","R","P"];
  int Selectedgearindex=2 ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:widget.constraints.maxWidth * 0.13,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: List.generate(gears.length, (index) => Text(gears[index],style:TextStyle(color:Selectedgearindex==index?primarycolor:Colors.white.withOpacity(0.16),fontSize:24,fontWeight:FontWeight.w500 ),)),

      ),
    );
  }
}










class Gearprinter_widget extends StatelessWidget {

  final BoxConstraints constraints ;

  const Gearprinter_widget({
    Key? key, required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:constraints.maxHeight * 0.22,
      width: constraints.maxWidth * 0.74,

      child: CustomPaint(
        painter: Gearprinter(),
        child:LayoutBuilder(builder:(context,constraints)=>
       Column(
         children:  [
           Padding(
             padding: const EdgeInsets.only(top:defaultPadding/2,bottom: defaultPadding/4 ),
             child: gears(constraints: constraints,),
           ),

           Text.rich(
             TextSpan(
                 text:"Rest.",
           style:TextStyle(fontSize:16,color:Colors.white.withOpacity(0.16)) ,
              children: const [
            TextSpan(text:" 465Km",
            style:TextStyle(color:Colors.lightGreen))
              ]
           ),

           ),
           Spacer(),
           Container(
             width:constraints.maxWidth * 0.74,
             height: 6,
             color: primarycolor,
           ),
           const SizedBox(
             height:defaultPadding * 0.75,
           )
    ],
    )
      ),
    ));
  }
}


class Gearprinter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint=Paint()
      ..color=primarycolor
      ..style=PaintingStyle.fill;
    double strokewidth =2 ;
    Path leftpath=Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width*0.17, size.height*0.5)
      ..lineTo(size.width*0.34, size.height*0.5)
      ..lineTo(size.width*0.42, size.height*0.0)
      ..lineTo(size.width*0.48, size.height*0.0)
      ..lineTo(size.width*0.48, strokewidth)
      ..lineTo(size.width*0.42, strokewidth)
      ..lineTo(size.width*0.34, size.height*0.5 + strokewidth)
      ..lineTo(size.width*0.17, size.height*0.5 + strokewidth)
      ..close();

    Path rightpath =Path()
      ..moveTo(size.width * 0.52, 0)
      ..lineTo(size.width * 0.58, 0)
      ..lineTo(size.width * 0.66, size.height * 0.5)
      ..lineTo(size.width * 0.83, size.height * 0.5)
      ..lineTo(size.width , size.height )
      ..lineTo(size.width * 0.83, size.height * 0.5 + strokewidth)
      ..lineTo(size.width * 0.66, size.height * 0.5 + strokewidth)
      ..lineTo(size.width * 0.58, strokewidth)
      ..lineTo(size.width * 0.52, strokewidth)

      ..close();
    canvas.drawPath(leftpath, paint);
    canvas.drawPath(rightpath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }
}





