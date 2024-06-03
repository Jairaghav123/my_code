import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/sliderscreen3.dart';
import 'package:intl/intl.dart';

import 'color_seeting_button_widget.dart';


class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                color_setting_button(screenheight: screenheight, screenwidth: screenwidth, myText: 'Mono Color settings',myicon:Icons.settings, iconcolors: Colors.white,),
                color_setting_button(screenheight: screenheight, screenwidth: screenwidth, myText: 'RGB Color-Green settings',myicon:Icons.settings, iconcolors: Colors.green,),
                color_setting_button(screenheight: screenheight, screenwidth: screenwidth, myText: 'RGB Color-Brown settings',myicon:Icons.settings, iconcolors: Colors.brown,),
                color_setting_button(screenheight: screenheight, screenwidth: screenwidth, myText: 'RGB Color-??? settings',myicon:Icons.settings, iconcolors: Colors.black,),
                Container(
                  height:screenheight*.25,
                  width: screenwidth*0.18,
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
                        Image.asset("asset/cinemabg.png",height: 30,width: 30,),
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
                slider_screen3(slidervalue: 154,),
                slider_screen3(slidervalue: 245,),
                slider_screen3(slidervalue: 56,),
                slider_screen3(slidervalue: 78,),
                slider_brightness(slidervalue: 89,),


              ],
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(width:screenwidth*0.10,),
                SizedBox(
                  width: screenwidth*.8,
                  height: screenheight*0.06,
                  child:  ElevatedButton(
                    onPressed: () {
                      // Action for top camera view button
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings),
                        Text('Adjust Bottom Camera and Top lighting parameters '),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width:5),
                SizedBox(height:screenheight*0.07,child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen2()));
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



