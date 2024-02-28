

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:myanimations/3dobjects/my3D_animation_practice/myanimation1.dart';
import 'package:myanimations/3dobjects/objects_3d.dart';
import 'package:myanimations/car_hmi/car_hmi_dashboard.dart';
import 'package:myanimations/my_all_animations/arc_animation.dart';
import 'package:myanimations/my_all_animations/rotating_rectangle.dart';
import 'package:myanimations/shaderapp/shader.dart';


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
      home://My3DObjects(),
      //const MyAnimation1(),
      //const rotating_arc(),
     // rotating_object(),
      //CarHMIDashboard()
      //ShaderApp(), //
      CarAnimation(),
    );
  }
}
//
// class CarAnimation extends StatefulWidget {
//   @override
//   _CarAnimationState createState() => _CarAnimationState();
// }
//
// class _CarAnimationState extends State<CarAnimation> with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<Offset> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 8),
//     );
//     animation = Tween<Offset>(
//       begin: const Offset(0.5, 0.5),
//       end: Offset(0.0, 0.0),
//     ).animate(
//       CurvedAnimation(parent: animationController, curve: Curves.easeOutQuint),
//     );
//     animationController.repeat(period: Duration(seconds: 10));
//   }
//
//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }
//
//   void moveCar(int direction) {
//     Offset currentOffset = animation.value;
//     Offset newOffset = currentOffset;
//
//     switch (direction) {
//       case 1:
//         newOffset += Offset(-0.1, 0.0); // Move left
//         break;
//       case 2:
//         newOffset += Offset(0.1, 0.0); // Move right
//         break;
//       case 3:
//         newOffset += Offset(0.0, -0.1); // Move up
//         break;
//       case 4:
//         newOffset += Offset(0.0, 0.1); // Move down
//         break;
//       default:
//         newOffset = currentOffset; // Default position
//     }
//
//     newOffset = Offset(
//       newOffset.dx.clamp(0.0, 1.0),
//       newOffset.dy.clamp(0.0, 1.0),
//     );
//
//     animationController.reset();
//     animationController.forward();
//     animation = Tween<Offset>(
//       begin: currentOffset,
//       end: newOffset,
//     ).animate(
//       CurvedAnimation(parent: animationController, curve: Curves.easeOutQuint),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
//     final double height=MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       backgroundColor:Colors.black,
//       body: Stack(
//         children: [
//           Center(
//             child: Container(
//               margin:EdgeInsets.only(top:150),
//               color:Colors.black,
//               width:MediaQuery.of(context).size.width*0.5,
//               height:MediaQuery.of(context).size.height*1,
//               child: ClipPath(
//                 child: CustomPaint(
//                   painter: MyPaint(),
//                 ),
//               ),
//             ),
//           ),
//           AnimatedBuilder(
//             animation: animationController,
//             builder: (BuildContext context, Widget? child) {
//               return Transform.translate(
//                 offset: Offset(0, animation.value.dy * MediaQuery.of(context).size.width),
//                 child: Center(
//                   child: Container(
//                     height: 200,
//                     width: 200,
//                     child: Image.asset("assets/car.png"),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               moveCar(1); // Move left
//             },
//             child: Icon(Icons.arrow_back),
//           ),
//           SizedBox(height: 10),
//           FloatingActionButton(
//             onPressed: () {
//               moveCar(3); // Move up
//             },
//             child: Icon(Icons.arrow_upward),
//           ),
//           SizedBox(height: 10),
//           FloatingActionButton(
//             onPressed: () {
//               moveCar(4); // Move down
//             },
//             child: Icon(Icons.arrow_downward),
//           ),
//           SizedBox(height: 10),
//           FloatingActionButton(
//             onPressed: () {
//               moveCar(2); // Move right
//             },
//             child: Icon(Icons.arrow_forward),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MyPaint extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint myPaint = Paint();
//     Path myPath = Path();
//
//     myPaint.style = PaintingStyle.stroke;
//     myPaint.color = Colors.white10;
//     myPaint.strokeWidth = 2;
//     myPath.moveTo(size.width * 0.4, size.height * 0.2);
//     myPath.lineTo(size.width * 0.2, size.height * 1);
//     canvas.drawPath(myPath, myPaint);
//
//     myPath = Path();
//     myPaint.style = PaintingStyle.stroke;
//     myPaint.color = Colors.white10;
//     myPaint.strokeWidth = 2;
//     myPath.moveTo(size.width * 0.6, size.height * 0.2);
//     myPath.lineTo(size.width * 0.8, size.height * 1);
//     canvas.drawPath(myPath, myPaint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
//
// /*import 'package:myanimations/3dobjects/objects_3d.dart';
// import 'package:myanimations/carHmi2/carhmi2.dart';
// import 'package:myanimations/car_hmi/car_hmi_dashboard.dart';
// import 'package:myanimations/my_all_animations/arc_animation.dart';
// import 'package:myanimations/my_all_animations/rotating_rectangle.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowMaterialGrid:false,
//       debugShowCheckedModeBanner:false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//
//       ),
//       home://const myroad()
//       //const CarHMIDashboard(),
//      // const My3DObjects(),
//       //const rotating_arc(),
//       //rotating_object()
//       CarAnimation(),
//     );
//   }
// }

class CarAnimation extends StatefulWidget {
  @override
  _CarAnimationState createState() => _CarAnimationState();
}

class _CarAnimationState extends State<CarAnimation> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  late Animation<Offset> animation2;
  late Animation<Offset> animation3;
  late Animation<Offset> animation4;
  late Animation<Offset> animation5;
  late Animation<Offset> animation6;
  late Animation<Offset> animation7;
  late Animation<Offset> animation8;




  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
    animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: const Offset(0.0, 0.07), //0.02
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );

    ///////////
    animation2 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );


    /////////////////////////////////
    animation3 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );



    ////////////////////////
    animation4 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );


    animation5 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );


    ///////

    animation6 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );


      ///////////////

    animation7 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );



    ////////////


    animation8 = Tween<Offset>(
      begin: const Offset(0.0, 0.0), //
      end: Offset(0.0, 0.07),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    );



    /////////
    animationController.repeat(period:Duration(seconds: 2));
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

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation.value.dy * MediaQuery.of(context).size.height),
                child: Container(color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),

            ///test container




                // Center(
                //   child: Container(color:Colors.red,height: MediaQuery.of(context).size.height*0.01,
                //     width: MediaQuery.of(context).size.width*0.1,margin:EdgeInsets.only(top:100),),
                // ),






          ///

             ///////////////
          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation2.value.dy * MediaQuery.of(context).size.height), //animation2.value.dy * MediaQuery.of(context).size.width
                child: Container(margin:EdgeInsets.only(top:100,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),
     // //
     // //         ////////////////////////////
     // //
     // // //
          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation3.value.dy * MediaQuery.of(context).size.height),
                child: Container(margin:EdgeInsets.only(top:200,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },
     ),
     // // //
     // // //
     // //
     // //      ///////////////////////////
     // //
     // //
     // //
          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation4.value.dy * MediaQuery.of(context).size.height),
                child: Container(margin:EdgeInsets.only(top:300,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),
     //
     //
     //
     //
     // /////////////////////////////
     //
     //
          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation5.value.dy * MediaQuery.of(context).size.height),
                child: Container(margin:EdgeInsets.only(top:400,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),
     //
     //
        //////////////////////


          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation6.value.dy * MediaQuery.of(context).size.height),
                child: Container(margin:EdgeInsets.only(top:500,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),



          //////////////

          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation7.value.dy * MediaQuery.of(context).size.height),
                child: Container(margin:EdgeInsets.only(top:500,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),


          ////////////////

          AnimatedBuilder(
            animation: animationController,

            builder: (BuildContext context, Widget? child) {  return Center(
              child: Transform.translate(
                offset: Offset(0, animation8.value.dy * MediaQuery.of(context).size.height),
                child: Container(margin:EdgeInsets.only(top:600,),color:Colors.blue,height: MediaQuery.of(context).size.height*0.01,
                  width: MediaQuery.of(context).size.width*0.1,),
              ),
            ); },

          ),





          // transform: //Matrix4.translationValues(0, animation.value.dy *width,0),

               Center(
                child: Container(
                  margin:EdgeInsets.only(top:400),
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/car.png"),
                ),
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

    mypaint.color=Colors.white;
    mypaint.strokeWidth=2;
    mypath.moveTo(size.width*0.4, size.height*.2);

    mypath.lineTo(size.width*0.2, size.height*1);

    canvas.drawPath(mypath, mypaint);

    mypaint2.style=PaintingStyle.stroke;
    mypaint2.color=Colors.white;
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
