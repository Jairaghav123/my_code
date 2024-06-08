import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/analysisscreenwidgets.dart';
import 'package:flutter_ics_homescreen/inserttrayscreen.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screensize.dart';


import 'package:flutter_ics_homescreen/sliderscreen3.dart';
import 'package:intl/intl.dart';

import 'color_seeting_button_widget.dart';
import 'defectselectionscreenwidget.dart';


class StartAnalysis extends StatefulWidget {
  const StartAnalysis({super.key});

  @override
  State<StartAnalysis> createState() => _StartAnalysisState();
}

class _StartAnalysisState extends State<StartAnalysis> {
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
                          const Icon(Icons.calendar_month_rounded),
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style: const TextStyle(fontSize: 14,color:Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: const TextStyle(fontSize: 16,color:Colors.white),),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),



            const Spacer(),
            const Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                Column(

                  children: [
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Estate Name/ Agent Name',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Estate Address/ Agent Address',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Lorry Number',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'No of Bags',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Lot Weight',),
                    SizedBox(height: 20,),

                  ],
                ),

                SizedBox(width:screenWidth*0.10,),
                Column(
                  children: [
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Type and Grade',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Analysis Sample weight',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Analysis Sample weight',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Lorry Sample weight',),
                    SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: 'Moisture level',),
                    SizedBox(height: 20,),
                  ],
                )
              ],
            ),
            
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:100,child: ElevatedButton(onPressed: (){

                    //Data will be save to file

                }, child: const Text("Save"))),

                SizedBox(width:100,child:
                ElevatedButton(onPressed: ()

                {
                 Navigator.pushNamed(context, "Insert Tray pop up Screen");
                }, child: const Text("Next"))),


                SizedBox(width:100,child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "HomeScreen");
                }, child: const Text("Back")))
              ],
            ),
            const Spacer(),
            const SizedBox(width:screenWidth*0.10,height: screenHeight*0.10,),
            Container(
              alignment: Alignment.center,
              width: screenWidth*.8,
              height: screenHeight*0.06,
              child:  const Text('Agent and Material Data ',style: TextStyle(fontSize:30,fontWeight:FontWeight.normal,color:Colors.white),),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}




