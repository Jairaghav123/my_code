import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/bottomcamera_preview_screen.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/screensize.dart';
import 'package:flutter_ics_homescreen/startAnalysisscreen.dart';
import 'package:flutter_ics_homescreen/topcamera_preview_screen.dart';
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
                    width: screenWidth*0.15,
                color:Colors.white,
                    child: Image.asset('asset/mylogo.png')), // Replace 'assets/logo.png' with your logo
                //const SizedBox(width:250),
                 Container(
                   alignment: Alignment.center,
                     width: screenWidth*0.60 ,child: const Text("Knemetic solutions",style: TextStyle(fontSize:40,fontWeight:FontWeight.normal,color:Colors.white),)),
                Container(
                  color:Colors.blue,
                  width: screenWidth*0.15,
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                screen1button(screenheight: screenHeight*0.12, screenwidth: screenWidth*0.12, myicon: Icons.analytics_outlined, mytext: 'Start Analysis', iconsize: 30, myobject: "Start Analysis Screen",),
                screen1button(screenheight: screenHeight*0.12, screenwidth: screenWidth*0.12, myicon: Icons.camera, mytext: 'Top Camera View', iconsize: 30, myobject: "Top CAM preview Screen",),
                screen1button(screenheight: screenHeight*0.12, screenwidth: screenWidth*0.12, myicon: Icons.camera_alt, mytext: 'Bottom Camera View', iconsize: 30, myobject: "Bottom CAM preview Screen",),
              ],
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                screen1button(screenheight: screenHeight*0.12, screenwidth: screenWidth*0.12, myicon: Icons.dataset, mytext: 'Data log', iconsize: 30, myobject: "Data Log Screen",),
                screen1button(screenheight: screenHeight*0.12, screenwidth: screenWidth*0.12, myicon: Icons.settings, mytext: 'Settings', iconsize: 30, myobject: "SettingsScreen",),
              ],
            ),
            const SizedBox(height: 80),
            Container(
              //color:Colors.wh,
              decoration:BoxDecoration(
                border: Border.all(color:Colors.blueGrey)

                ),

              width: screenWidth*.8,
              height: screenHeight*0.1,
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
  final String  myobject ;


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
            //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => widget.myobject));
            Navigator.pushNamed(context, widget.myobject );
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