//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_cube/flutter_cube.dart';
//
//
//
// class MyAnimation1 extends StatefulWidget {
//   const MyAnimation1({Key? key}) : super(key: key);
//
//   @override
//   State<MyAnimation1> createState() => _MyAnimation1State();
// }
//
// class _MyAnimation1State extends State<MyAnimation1>
//     with SingleTickerProviderStateMixin {
//   late Object jet;
//   late AnimationController mycontroller;
//   late Animation<double> myanimation;
//
//   @override
//   void initState()  {
//     super.initState();
//     jet = Object(fileName: "assets/jet/Jet.obj");
//     jet.position.setValues(0, 0, 0);
//     jet.updateTransform();
//
//     mycontroller =
//         AnimationController(vsync: this, duration: const Duration(seconds: 10));
//     myanimation = Tween<double>(begin: 3, end: 12).animate(mycontroller.animateTo(duration:Duration(seconds: 5),curve:Curves.easeInOut));
//     mycontroller.repeat(reverse: true);
//   }
//
//   @override
//   void dispose() {
//     mycontroller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Jet Animation"),
//         centerTitle: true,
//         backgroundColor: Colors.indigo.withOpacity(0.8),
//         shadowColor: Colors.blueAccent.withOpacity(0.8),
//       ),
//       body: Center(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               colors: [
//                 Colors.white, //light blue //0xFF182848
//                 Color(0xFF182844), //dark blue  //0xFF2B4E73
//               ],
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           height: MediaQuery.of(context).size.height * 1,
//           width: MediaQuery.of(context).size.width * 1,
//           child: AnimatedBuilder(
//             animation: mycontroller,
//             builder: (BuildContext context, Widget? child) {
//               return Transform.rotate(
//                 angle: 0,
//                 alignment: Alignment.center,
//                 child: Cube(
//                   onSceneCreated: (Scene scene) {
//                     scene.world.add(jet);
//                     jet.scale.setFrom(Vector3.all(myanimation.value));
//                    // scene.camera.zoom = 1.0; // Resetting zoom to 1
//                   },
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
