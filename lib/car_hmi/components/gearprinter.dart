

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';
import 'dashlineprinter.dart';




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
       Stack(
         fit:StackFit.expand,
         children: [
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
               const Spacer(),
               Container(
                 width:constraints.maxWidth * 0.74,
                 // height: 6,
                 // color: primarycolor,
                 child: Row(
                   children: [

                     Padding(
                       padding: const EdgeInsets.only(right:defaultPadding/2),
                       child: Text("E",style:TextStyle(color:Colors.white.withOpacity(0.16),fontSize:16,fontWeight:FontWeight.w500),),
                     ),
                      Expanded(child: SizedBox(
                        height:8 ,
                        child: ClipPath(
                          clipper:Batteryclipper(),
                          child: CustomPaint(
                           painter:MyDashline(1)
                     ),
                        ),
                      )),
                     const Padding(
                       padding: EdgeInsets.only(left:defaultPadding/2),
                       child: Text("100 %",style:TextStyle(color:Colors.lightGreen,fontSize:16,fontWeight:FontWeight.w500),),
                     ),
                   ],
                 ),


               ),
               const SizedBox(
                 height:defaultPadding * 0.75,
               )
    ],
    ),
           
           
           Positioned(
               top :constraints.maxHeight * 0.10,
               left: constraints.maxWidth * 0.16,
               width: constraints.maxWidth * 0.17,
               height: constraints.maxHeight * 0.38,
               child:
               CustomPaint(
                 painter: AvgWattPerKMPrinter(),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:  [

                     SizedBox(width:constraints.maxWidth* 0.025,),
                     Text("Avg 11.3 ",style: TextStyle(color: Colors.white.withOpacity(0.16),fontSize: 16,fontWeight: FontWeight.w500),),
                       Text("W/km",style:TextStyle(color: Colors.white.withOpacity(0.32),fontSize: 16,fontWeight: FontWeight.w500)),
                   ],
                 ),
               )),


           //////////////////////////////////////////////////




           Positioned(
               top :constraints.maxHeight * 0.10,
               right: constraints.maxWidth * 0.16,
               width: constraints.maxWidth * 0.17,
               height: constraints.maxHeight * 0.38,
               child:
               CustomPaint(
                 painter: ODOKMPrinter(),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:  [


                     Text("ODO 3000 ",style: TextStyle(color: Colors.white.withOpacity(0.16),fontSize: 16,fontWeight: FontWeight.w500),),
                     Text("km",style:TextStyle(color: Colors.white.withOpacity(0.32),fontSize: 16,fontWeight: FontWeight.w500)),
                     SizedBox(width:constraints.maxWidth* 0.025,),
                   ],
                 ),
               )),





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





class AvgWattPerKMPrinter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    final double strokewidth=4;
    Paint paint =Paint()
    ..style=PaintingStyle.fill
    ..color=primarycolor ;
    Path path =Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width * 0.27 , 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width * 0.27, 0+strokewidth)

      ..close();

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }

}








class ODOKMPrinter extends CustomPainter {


  @override
  void paint(Canvas canvas, Size size) {
    final double strokewidth=4;
    Paint paint =Paint()
      ..style=PaintingStyle.fill
      ..color=primarycolor ;
    Path path =Path()
      ..moveTo(size.width, size.height)
      ..lineTo(size.width * 0.77 , 0)
      ..lineTo(0, 0)
      ..lineTo(size.width * 0.77, 0+strokewidth)

      ..close();

    canvas.drawPath(path, paint);
}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }
}




