

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:myanimations/3dobjects/objects_3d.dart';
import 'package:myanimations/car_hmi/car_hmi_dashboard.dart';
import 'package:myanimations/my_all_animations/arc_animation.dart';
import 'package:myanimations/my_all_animations/rotating_rectangle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowMaterialGrid:false,
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home:const CarHMIDashboard(),
      //const My3DObjects(),
      //const rotating_arc(),
      //rotating_object()
      //CarAnimation(),
    );
  }
}

class CarAnimation extends StatefulWidget {
  @override
  _CarAnimationState createState() => _CarAnimationState();
}

class _CarAnimationState extends State<CarAnimation> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animation = Tween<Offset>(
      begin: const Offset(0.5, 0.5), //
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOutQuint),
    );
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:Colors.black,
      body: Stack(
        children: [


          Center(
            child: Container(
              margin:EdgeInsets.only(top:150),
              color:Colors.black,


              width:MediaQuery.of(context).size.width*0.5,
              height:MediaQuery.of(context).size.height*1,
              child: ClipPath(
                child: CustomPaint(
                  painter: mypaint(),
                ),
              ),
            ),
          ),














          AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget? child) {
            return Transform.translate(
             // transform: //Matrix4.translationValues(0, animation.value.dy *width,0),
              offset: Offset(0, animation.value.dy * MediaQuery.of(context).size.width),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/car.png"),
                ),
              ),
            );
          },
        ),
     ] ),


    );
  }
}





class mypaint extends CustomPainter


{
  @override
  void paint(Canvas canvas, Size size) {
    Paint mypaint=Paint();
    Path mypath=Path();
    Paint mypaint2=Paint();
    Path mypath2=Path();


    mypaint.style=PaintingStyle.stroke;

    mypaint.color=Colors.white10;
    mypaint.strokeWidth=2;
    mypath.moveTo(size.width*0.4, size.height*.2);

    mypath.lineTo(size.width*0.2, size.height*1);

    canvas.drawPath(mypath, mypaint);

    mypaint2.style=PaintingStyle.stroke;
    mypaint2.color=Colors.white10;
    mypaint2.strokeWidth=2;
    mypath2.moveTo(size.width*0.6, size.height*.2);
    mypath2.lineTo(size.width*0.8, size.height*1);

    canvas.drawPath(mypath2, mypaint2);
    canvas.drawShadow(mypath, Colors.cyan, 14, false);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}











// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home:  MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//    MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
//
//
//   late Animation animation ;
//   late AnimationController animationController ;
//
//
//
//
//   @override
//
//   void initState() {
//     super.initState();
//     animationController=AnimationController(vsync: this,duration:Duration(seconds:5),);
//     animation=Tween<Offset>(begin:const Offset(0.5, -1.0),end: Offset(0.0, 0.0) ).animate(CurvedAnimation(parent: animationController,curve:Curves.fastOutSlowIn),);
//     animationController.forward();
//
//
//   }
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final double width=MediaQuery.of(context).size.width ;
//
//     return AnimatedBuilder(animation: animationController,
//       builder: (BuildContext context, Widget? child) {
//       return Scaffold(
//         body:Transform(transform: Matrix4.translationValues(animation.value*width,0.0,0.0),
//           child: Center(
//             child: Container(
//               height: 200,
//               width: 150,
//
//               child:Image.asset("assets/car.png"),
//             ),
//           ),
//
//         )
//         ,
//       );
//       },
//
//
//
//
//       ); // This trailing comma makes auto-formatting nicer for build methods.
//
//   }
// }
