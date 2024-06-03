import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/resultscreenwidget.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:intl/intl.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});


  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override

  Widget build(BuildContext context) {
    final screenheight=MediaQuery.of(context).size.height ;
    final screenwidth=MediaQuery.of(context).size.width ;
    print("$screenwidth");
    print("$screenheight");
    return Scaffold(

      body: Container(
        height: screenheight,
        width: screenwidth,
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
            const SizedBox(height: 50),
             Row(

              children: [
                const SizedBox(width:30,),
                Container(alignment:Alignment.center,
                  width:screenwidth*0.30,height:screenheight*.05,color:Colors.blue,child:const Text("Agent Details"),
                ),
                SizedBox(width:screenwidth*0.05,),
                Container(alignment:Alignment.center,
                  width:screenwidth*0.30,height:screenheight*.05,color:Colors.blue,child:const Text("Analysis Data"),
                )
              ],
            ),
            const SizedBox(height:40,),
            Row(
              children: [
                Column(children: [
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "MC", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "PB", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "AAA", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "AA", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "A", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "B", percentagetext: '....',),
                  const SizedBox(height: 10,),

                ],),


                SizedBox(width:screenwidth*0.20,),
                Column(children: [
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "C", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "BB", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "BL", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "BERRY", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "BITS", percentagetext: '....',),
                  const SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "HUSK/Stone", percentagetext: '....',),
                  const SizedBox(height: 10,),



                ],),


              const SizedBox(width:30,),

                Column(children: [
                  Container(

                    height:screenheight*.06,
                    width: screenwidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                      },
                      child: const Text('Save'),
                    ),
                  ),


                  const SizedBox(height: 20,),

                  Container(
                    height:screenheight*.06,
                    width: screenwidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                      },
                      child: const Text('Discard '),




                    ),
                  ),


                  const SizedBox(height: 20,),

                  Container(
                    height:screenheight*.06,
                    width: screenwidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                      },
                      child: const Text('Print '),
                    ),
                  ),



                  const SizedBox(height: 20,),
                  Container(
                    height:screenheight*.06,
                    width: screenwidth*0.10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen1()));
                      },
                      child: const Text('Home '),
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
              width: screenwidth*.8,
              height: screenheight*0.1,
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.analytics_outlined,color: Colors.white,),
                  Text('Analysis Completed ',style:TextStyle(color:Colors.white),),
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