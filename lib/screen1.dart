import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/bottomcamera_preview_screen.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/startAnalysisscreen.dart';
import 'package:flutter_ics_homescreen/topcamera_preview_screen.dart';
import 'package:flutter_ics_homescreen/viewdatalogscreen.dart';
import 'package:intl/intl.dart';

import 'datalogscreen.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override

  Widget build(BuildContext context) {
    final screenheight=MediaQuery.of(context).size.height ;
    final screenwidth=MediaQuery.of(context).size.width ;

    return Scaffold(

      body: Container(
        color:Colors.blueGrey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: screenwidth*0.15,
                color:Colors.white,
                    child: Image.asset('asset/mylogo.png')), // Replace 'assets/logo.png' with your logo
                //const SizedBox(width:250),
                 Container(
                   alignment: Alignment.center,
                     width: screenwidth*0.60 ,child: const Text("Knemetic solutions",style: TextStyle(fontSize:40,fontWeight:FontWeight.normal,color:Colors.white),)),
                Container(
                  color:Colors.blue,
                  width: screenwidth*0.15,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_rounded,color:Colors.white),
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style: const TextStyle(fontSize: 14,color:Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: const TextStyle(fontSize: 16,color:Colors.white)),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
           const  Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                screen1button(screenheight: screenheight*0.12, screenwidth: screenwidth*0.12, myicon: Icons.analytics_outlined, mytext: 'Start Analysis', iconsize: 30, myobject: const StartAnalysis(),),
                screen1button(screenheight: screenheight*0.12, screenwidth: screenwidth*0.12, myicon: Icons.camera, mytext: 'Top Camera View', iconsize: 30, myobject: const TopCameraview(),),
                screen1button(screenheight: screenheight*0.12, screenwidth: screenwidth*0.12, myicon: Icons.camera_alt, mytext: 'Bottom Camera View', iconsize: 30, myobject: const BottomCameraview(),),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                screen1button(screenheight: screenheight*0.12, screenwidth: screenwidth*0.12, myicon: Icons.dataset, mytext: 'Data log', iconsize: 30, myobject: const DataLogScreen(),),
                screen1button(screenheight: screenheight*0.12, screenwidth: screenwidth*0.12, myicon: Icons.settings, mytext: 'Settings', iconsize: 30, myobject: const Screen2(),),
              ],
            ),
            const SizedBox(height: 80),
            Container(
              //color:Colors.wh,
              decoration:BoxDecoration(
                border: Border.all(color:Colors.blueGrey)

                ),

              width: screenwidth*.8,
              height: screenheight*0.1,
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Icon(Icons.pro,color: Colors.white,),
                  Text('Progress info bar ',style:TextStyle(color:Colors.white,fontSize: 16),),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class screen1button extends StatefulWidget {
  const screen1button({
    super.key,
    required this.screenheight,
    required this.screenwidth, required this.myicon, required this.mytext, required this.iconsize, required this.myobject,
  });

  final double screenheight;
  final double screenwidth;
  final IconData myicon ;
  final String mytext ;
  final double iconsize ;
  final Widget  myobject ;

  @override
  State<screen1button> createState() => _screen1buttonState();
}

class _screen1buttonState extends State<screen1button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.screenheight,
      width: widget.screenwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40), // Adjust the value as needed
      ),
      child: ElevatedButton(
        onPressed: () {
          // Action for top camera view button

          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => widget.myobject));
          });
        },
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.myicon,size:widget.iconsize,),
             Text(widget.mytext),
          ],
        ),
      ),
    );
  }
}