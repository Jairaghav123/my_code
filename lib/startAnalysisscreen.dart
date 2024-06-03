import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/analysisscreenwidgets.dart';
import 'package:flutter_ics_homescreen/inserttrayscreen.dart';
import 'package:flutter_ics_homescreen/screen1.dart';


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
            Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                Column(

                  children: [
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Estate Name/ Agent Name',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Estate Address/ Agent Address',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Lorry Number',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'No of Bags',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Lot Weight',),
                    const SizedBox(height: 20,),

                  ],
                ),

                SizedBox(width:screenwidth*0.10,),
                Column(
                  children: [
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Type and Grade',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Analysis Sample weight',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Analysis Sample weight',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Lorry Sample weight',),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: 'Moisture level',),
                    const SizedBox(height: 20,),
                  ],
                )
              ],
            ),
            
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:100,child: ElevatedButton(onPressed: (){



                }, child: const Text("Save"))),
                SizedBox(width:100,child: ElevatedButton(onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const InsertTrayscreen()));
                }, child: const Text("Next"))),
                SizedBox(width:100,child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen1()));
                }, child: const Text("Back")))
              ],
            ),
            const Spacer(),
            Row(
              children: [
                SizedBox(width:screenwidth*0.10,height: screenheight*0.10,),
                SizedBox(
                  width: screenwidth*.8,
                  height: screenheight*0.06,
                  child:  ElevatedButton(
                    onPressed: () {
                      // Action for top camera view button
                    },
                    child: const Text('Agent and Material Data '),
                  ),
                ),



              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}




