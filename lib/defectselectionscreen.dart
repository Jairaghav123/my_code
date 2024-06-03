import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen2.dart';


import 'package:flutter_ics_homescreen/sliderscreen3.dart';
import 'package:intl/intl.dart';

import 'color_seeting_button_widget.dart';
import 'defectselectionscreenwidget.dart';


class defectselection extends StatefulWidget {
  const defectselection({super.key});

  @override
  State<defectselection> createState() => _defectselectionState();
}

class _defectselectionState extends State<defectselection> {
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
                  color:Colors.white,
                  width: screenwidth*0.15,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_rounded),
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style: const TextStyle(fontSize: 14)),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: const TextStyle(fontSize: 16)),
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
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'MC', firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'PB',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'AAA',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'AA',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'A',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'B',firstvalue: true,),
                   ],
                 ),

                 SizedBox(width:screenwidth*0.35,),
                 Column(
                   children: [
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'C',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'BB',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'BL',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'BERRY',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'BITS',firstvalue: true,),
                     const SizedBox(height: 20,),
                     defectselectioncolumn(screenwidth: screenwidth, screenheight: screenheight, innertext: 'HUSK/Stone',firstvalue: true,),
                   ],
                 )
               ],
             ),

            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [

                SizedBox(width:100,child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen2()));

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
                    child: const Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings),
                        Text('Settings '),
                      ],
                    ),
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




