///////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen1.dart';

class BootScreen extends StatefulWidget {
  const BootScreen({super.key});

  @override
  State<BootScreen> createState() => _BootScreenState();
}

class _BootScreenState extends State<BootScreen> with SingleTickerProviderStateMixin {
  @override
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8), // Adjust duration as needed
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
    _controller.forward().whenComplete(() =>   Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  Screen1()),
    )
    );



  }


  Widget build(BuildContext context) {

    final screenheight=MediaQuery.of(context).size.height ;
    final screenwidth=MediaQuery.of(context).size.width ;

    return  Scaffold(

      body:Container(
        height:screenheight,
        width:screenwidth,
        color:Colors.blueGrey,
        child:  Center(
          child: Column(
            children: [
              //logo
              const SizedBox(height:30),
              Container(
                height: screenheight*1/2,
                width: screenwidth*.5,
                color:Colors.white,
                child: Image.asset("asset/mylogo.png"),
              ),
              const SizedBox(height: 20,),
              const SizedBox(
                child: Text("Knemetic solutions",style: TextStyle(fontSize:30,fontWeight:FontWeight.normal,color:Colors.white),),
              ),
              const SizedBox(height: 15,),
              const  SizedBox(
                child: Text("Copyright © 2024 knemetic solutions. All rights reserved Version 1.0.0 "
                    ,style: TextStyle(fontSize:20,fontWeight:FontWeight.normal,color:Colors.white),),
              ),
              const SizedBox(height: 30,),
                Container(
                  alignment: Alignment.center,

                 width: screenwidth*.8,
                 height: screenheight*0.1,
                 child: AnimatedBuilder(
                   animation: _animation,
                   builder: (context, child) {
                     return const Text("Booting ... Please wait ",style:TextStyle(fontSize:20,fontWeight:FontWeight.normal,color:Colors.white),) ;
                     //   LinearProgressIndicator(
                     //   value: _animation.value,
                     // );
                   },

              ),
                 ),



              //company name



              //software version copyrights


              //booting percentage
            ],
          ),
        ),
      )



    );
  }
}



