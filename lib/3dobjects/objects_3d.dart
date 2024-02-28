import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
//https://sketchfab.com/3d-models/ural-truck-diorama-low-poly-0f5af026e75248aaa7010990edbf677b


/*
First we create the object type variable

Do the below steps in the init function
Assign the object by passing the file name inside it
pass the position by .set values function pass the x ,y ,z cordinate inside it


//wraping of 3d objects
Wrap the 3d object with the cube widget
pass the on scene create arguments
 */

class My3DObjects extends StatefulWidget {
  const My3DObjects({super.key});

  @override
  State<My3DObjects> createState() => _My3DObjectsState();
}

class _My3DObjectsState extends State<My3DObjects> {

  late Object MyJet ;

  @override
  void initState() {
    MyJet=Object(fileName:"assets/jet/Jet.obj");
    MyJet.position.setValues(0, 0, 0);
    MyJet.updateTransform();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar:AppBar(title:const Text(
          "3D OBJECTS TEST"),
        centerTitle:true,
      ),

      body:Center(
        child: Container(
          decoration:const BoxDecoration(
            gradient:LinearGradient(
              begin:Alignment.topCenter,
              colors: [Colors.white, //light blue //0xFF182848
              Color(0xFF182844),//dark blue  //0xFF2B4E73

            ],
              end:Alignment.bottomCenter,

            )
          ),

           height:MediaQuery.of(context).size.height*1,
           width:MediaQuery.of(context).size.width*1,
          child:Transform.rotate(
            angle: 0,
            

            alignment:Alignment.center,
            child: Cube(

              onSceneCreated:(Scene scene){
                scene.world.add(MyJet);
                scene.camera.zoom=12;
              }
            ),
          ),
        ),
      ),
    );
  }
}
