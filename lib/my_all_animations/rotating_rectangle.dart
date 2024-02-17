//First we need to create a animation controller object


import 'dart:math';

import 'package:flutter/material.dart';

class rotating_object extends StatefulWidget {
  const rotating_object({super.key});

  @override
  State<rotating_object> createState() => _rotating_objectState();
}

class _rotating_objectState extends State<rotating_object> with TickerProviderStateMixin{


  late AnimationController mycontroller ;
  late Animation<double> myanimation ;
  @override

  void initState() {

    mycontroller=AnimationController(vsync: this);
    myanimation=Tween(begin:0.0,end:2*pi).animate(mycontroller);
    mycontroller.repeat(period:const Duration(seconds:5));

    super.initState();
  }


  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor:Colors.black,
      body: Center(
        child:AnimatedBuilder(

          animation: mycontroller,

          builder: (BuildContext context, Widget? child) {
            return Transform(
              alignment:Alignment.center,

              transform: Matrix4.identity()..rotateX(myanimation.value),
              child: Container(

                height:100,
                width:100,
                decoration:BoxDecoration(
                  shape:BoxShape.rectangle,
                  color:Colors.blue,
                  border:Border.all(width:2,color:Colors.lightBlueAccent.withOpacity(.5)),
                  borderRadius:BorderRadius.circular(10),
                  boxShadow:const [
                    BoxShadow(
                      color:Colors.white,
                      blurRadius:2,
                      spreadRadius:3,
                    )
                  ]



                  ,
                ),
              ),
            );
          },

        ),
      ),


    );
  }
}