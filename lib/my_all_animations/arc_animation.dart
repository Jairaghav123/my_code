

import 'package:flutter/material.dart';
import 'dart:math' show pi;

enum Circleside{left,right}    //creting one enum for the cicle side

extension ToPath on Circleside{
  Path toPath(Size size){
    final path=Path();
    final Offset offset ;
    final bool clockwise ;
    switch (this) {

      case Circleside.left:
        path.moveTo(size.width, 0);
        offset=Offset(size.width, size.height);
        clockwise =false ;
        // TODO: Handle this case.
        break;
      case Circleside.right:

        offset=Offset(0, size.height);
        clockwise=true;
        // TODO: Handle this case.
        break;
    }
    
    path.arcToPoint(offset,radius:Radius.elliptical(size.width*0.5, size.height*0.5),clockwise: clockwise);

    path.close();
    return path;
  }//extension is a way to add functionality in a class without modifying the class itself.



}



class HalfCircle extends CustomClipper<Path>{

  late final Circleside side ;
  HalfCircle({required this.side});
  @override
  Path getClip(Size size) => side.toPath(size);
    // TODO: implement getClip



  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
  
}


class rotating_arc extends StatefulWidget {
  const rotating_arc({super.key});

  @override
  State<rotating_arc> createState() => _rotating_arcState();
}

class _rotating_arcState extends State<rotating_arc> with TickerProviderStateMixin {


  late AnimationController animationcontroller ;
  late Animation animation ;

  @override
  void initState() {
    animationcontroller=AnimationController(vsync: this,duration:Duration(seconds:2));
    animation=Tween<double>(begin:0,end:-pi*0.5).animate(CurvedAnimation(parent: animationcontroller, curve:Curves.bounceOut));
    super.initState();
  }


  @override

  void dispose() {
    animationcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds:1),(){
      animationcontroller..reset();
      animationcontroller..forward();

    });


    return  Scaffold(


      body: SafeArea(
        child: Center(

          child: AnimatedBuilder(
            animation: animationcontroller,
            builder: (BuildContext context, Widget? child) {

              return Transform(
                alignment:Alignment.center,
                transform: Matrix4.identity()..rotateZ(animation.value),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:  [

                    ClipPath(
                      clipper: HalfCircle(side: Circleside.left),

                      child: Container(
                        height:200,
                        width:200,
                        color:const Color(0xff0057b7),

                      ),
                    ),
                    ClipPath(
                      clipper: HalfCircle(side: Circleside.right),
                      child: Container(
                        height:200,
                        width:200,
                        color: const Color(0xffffd700),
                      ),
                    )

                  ],
                ),
              );
            },

          ),
        ),
      ),
    );
  }
}
