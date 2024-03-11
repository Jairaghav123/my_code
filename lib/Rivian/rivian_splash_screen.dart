

import 'package:flutter/material.dart';

import '../main.dart';


class rivian_splash_screen extends StatefulWidget {
  const rivian_splash_screen({super.key});

  @override
  State<rivian_splash_screen> createState() => _rivian_splash_screenState();
}

class _rivian_splash_screenState extends State<rivian_splash_screen>  with SingleTickerProviderStateMixin{
  late Animation<Offset> truckslide ;
  late AnimationController controller ;


  @override
  void initState() {
    controller=AnimationController(vsync: this,duration:const Duration(seconds: 2));
    truckslide=Tween(begin: const Offset(2.0,0),end:const Offset(0,0) ).animate(controller);


    controller.forward();



   controller.addListener(() {
     if(controller.isCompleted)
       {
         Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,secondaryAnimation)
         {

           return  CarAnimation();

         },

         transitionDuration:const Duration(seconds:5),
         transitionsBuilder: (context,animation,secondaryAnimation,child)
             {
               final tween=Tween(begin: const Offset(0,2),end:const Offset(0,0)).animate(CurvedAnimation(parent:animation,curve:Curves.linear));
               return
               SlideTransition(position: tween,
               child: child,);
             }
         ));
       }



   });



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Center(
        child: SlideTransition(
          position: truckslide,
          child: SizedBox(
            height: 750,
            width: 650,
            child: Image.asset("assets/truck3d.png"),
          ),
        )
    
      ),
    );
  }
}
