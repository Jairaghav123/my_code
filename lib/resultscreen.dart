import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/Data/variables/variables.dart';
import 'package:flutter_ics_homescreen/resultscreenwidget.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/screensize.dart';
import 'package:intl/intl.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});


  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override



  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        height: screenHeight,
        width: screenWidth,
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
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style: const TextStyle(fontSize: datetimefontsize,color:Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: const TextStyle(fontSize: datetimefontsize,color:Colors.white)),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
            const SizedBox(height: 50),
             Row(

              children: [
                const SizedBox(width:30,),
                Container(alignment:Alignment.center,
                  width:screenWidth*0.30,height:screenHeight*.05,color:Colors.blue,child: const Text("Null",style:TextStyle(fontSize:20,color:Colors.white)),
                )
                ,
                const SizedBox(width:screenWidth*0.05,),
                Container(alignment:Alignment.center,
                  width:screenWidth*0.30,height:screenHeight*.05,color:Colors.blue,child: const Text("Null",style:TextStyle(fontSize:20,color:Colors.white)),
                ),
              ],
            ),
            const SizedBox(height:40,),
            Row(
              children: [
                const Column(children: [
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "MC", percentagetext: '20 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "PB", percentagetext: '21 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "AAA", percentagetext: '23 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "AA", percentagetext: '28 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "A", percentagetext: '40 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "B", percentagetext: '51 ',),
                  SizedBox(height: 10,),

                ],),


                const SizedBox(width:screenWidth*0.20,),
                const Column(children: [
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "C", percentagetext: '21 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BB", percentagetext: '29 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BL", percentagetext: '49 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BERRY", percentagetext: '41 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BITS", percentagetext: '67 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "HUSK/Stone", percentagetext: '34 ',),
                  SizedBox(height: 10,),



                ],),


              const SizedBox(width:30,),

                Column(children: [
                  Container(

                    height:screenHeight*.06,
                    width: screenWidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                      },
                      child: const Text('Save',style:TextStyle(color:Colors.white,fontSize: 20),),
                    ),
                  ),


                  const SizedBox(height: 20,),

                  Container(
                    height:screenHeight*.06,
                    width: screenWidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                      },
                      child: const Text('Discard ',style:TextStyle(color:Colors.white,fontSize: 20),),




                    ),
                  ),


                  const SizedBox(height: 20,),

                  Container(
                    height:screenHeight*.06,
                    width: screenWidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                      },
                      child: const Text('Print ',style:TextStyle(color:Colors.white,fontSize: 20),),
                    ),
                  ),



                  const SizedBox(height: 20,),
                  Container(
                    height:screenHeight*.06,
                    width: screenWidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen1()));
                      },
                      child: const Text('Home ',style:TextStyle(color:Colors.white,fontSize:20),),
                    ),
                  ),


                  const SizedBox(height: 20,),

                ],),
              ],
            ),
            const Spacer(),
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
                  Icon(Icons.analytics_outlined,color: Colors.white,size: iconbelowscreen,),
                  Text('Analysis Completed ',style:TextStyle(color:Colors.white,fontSize: textbelowscreen),),
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