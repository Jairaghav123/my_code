import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/screensize.dart';
import 'package:flutter_ics_homescreen/sliderscreen3.dart';
import 'package:intl/intl.dart';

import 'color_seeting_button_widget.dart';


class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'Mono Color settings', myicon:Icons.settings, iconcolors: Colors.white,),
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'RGB Color-Green settings', myicon: Icons.settings, iconcolors: Colors.green,),
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'RGB Color-Brown settings', myicon: Icons.settings, iconcolors:Colors.brown,),
                color_setting_button(screenheight: screenHeight, screenwidth: screenWidth, myText: 'RGB Color-??? settings', myicon: Icons.settings, iconcolors: Colors.black,),
        Container(
          height:screenHeight*.25,
          width: screenWidth*0.18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), // Adjust the value as needed
          ),
          child: ElevatedButton(
            onPressed: () {
              // Action for top camera view button
            },
            child:  Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Image.asset("asset/cinemabg.png",height: 40,width: 40,),
                const Text("Top Light settings"),
              ],
            ),
          ),
        )




              ],
            ),
            const SizedBox(height: 40),
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const slider_screen3(slidervalue: 89,),
                const slider_screen3(slidervalue: 234,),
                const slider_screen3(slidervalue: 512,),
                const slider_screen3(slidervalue: 442,),
                slider_brightness(slidervalue: 99,),


              ],
            ),
            const Spacer(),
            Row(
              children: [
                 const SizedBox(width:screenWidth*0.10,),
                const SizedBox(
                  width: screenWidth*.8,
                  height: screenHeight*0.06,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings,size:35,color:Colors.blue),
                      Text('Adjust Top Camera and Top lighting parameters ',style: TextStyle(fontSize: 25,color:Colors.white),),
                    ],
                  ),
                ),

                const SizedBox(width:5),
                SizedBox(height:screenHeight*0.08,child: ElevatedButton(onPressed: (){

                  Navigator.pushNamed(context,"SettingsScreen");
                }, child: const Text("Back"))),


              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}



