import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/Data/variables/variables.dart';
import 'package:flutter_ics_homescreen/resultscreenwidget.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screensize.dart';
import 'package:intl/intl.dart';


class ViewDataLogScreen extends StatefulWidget {
  const ViewDataLogScreen({super.key});




  @override
  State<ViewDataLogScreen> createState() => _ViewDataLogScreenState();
}

class _ViewDataLogScreenState extends State<ViewDataLogScreen> {
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
                  width:screenWidth*0.30,height:screenHeight*.05,color:Colors.blue,child:const Text("NULL",style: TextStyle(fontSize: 20,color:Colors.white),),
                ),
                const SizedBox(width:screenWidth*0.05,),
                Container(alignment:Alignment.center,
                  width:screenWidth*0.30,height:screenHeight*.05,color:Colors.blue,child:const Text("NULL",style: TextStyle(fontSize: 20,color:Colors.white),),
                )
              ],
            ),
            const SizedBox(height:40,),
            Row(
              children: [
                const Column(children: [
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "MC", percentagetext: '20 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "PB", percentagetext: '20 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "AAA", percentagetext: '20 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "AA", percentagetext: '34 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "A", percentagetext: '67 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "B", percentagetext: '67',),
                  SizedBox(height: 10,),

                ],),


                const SizedBox(width:screenWidth*0.20,),
                const Column(children: [
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "C", percentagetext: '34 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BB", percentagetext: '56 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BL", percentagetext: '78 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BERRY", percentagetext: '56 ',),
                  SizedBox(height: 10,),
                  ResultScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, innertext: "BITS", percentagetext: '78 ',),
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
                      child: const Text('Save',style: TextStyle(fontSize: 20,color:Colors.white),),
                    ),
                  ),


                  const SizedBox(height: 40,),




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
                      child: const Text('Print ',style: TextStyle(fontSize: 20,color:Colors.white),),
                    ),
                  ),



                  const SizedBox(height: 40,),
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
                      child: const Text('Home ',style: TextStyle(fontSize: 20,color:Colors.white),),
                    ),
                  ),


                  const SizedBox(height: 20,),

                ],),
              ],
            ),
            const Spacer(),
            Container(

              //color:Colors.wh,
              // decoration:BoxDecoration(
              //     border: Border.all(c,width: 2)
              // ),
              width: screenWidth*.8,
              height: screenHeight*0.1,
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.dataset,color: Colors.white,size:iconbelowscreen),
                  Text('Stored data ',style:TextStyle(color:Colors.white,fontSize:20),),
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