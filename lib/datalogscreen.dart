import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/resultscreenwidget.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/viewdatalogscreen.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'datalogscreenwidget.dart';


class DataLogScreen extends StatefulWidget {
  const DataLogScreen({super.key});


  @override
  State<DataLogScreen> createState() => _DataLogScreenState();
}

class _DataLogScreenState extends State<DataLogScreen> {
  @override
  double _value = 40.0;
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
            const Spacer(),
            Row(
              children: [
                Column(children: [
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Agent Name", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Agent Name", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Agent Name", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Agent Name", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Agent Name", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Agent Name", ),
                  const SizedBox(height: 10,),

                ],),


                SizedBox(width:screenwidth*0.02,),
                Column(children: [
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Analysis Data", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Analysis Data", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Analysis Data", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Analysis Data", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Analysis Data", ),
                  const SizedBox(height: 10,),
                  DataLogScreenWidget(screenwidth: screenwidth, screenheight: screenheight, innertext: "Analysis Data", ),
                  const SizedBox(height: 10,),







                ],),


                const SizedBox(width:20,),
                SizedBox(width:MediaQuery.of(context).size.width*0.05 ,height:MediaQuery.of(context).size.height*0.45,
                    child: SfSlider.vertical(
                      min: 0.0,
                      max: 100.0,
                      value: 10,
                      interval: 20,
                      showTicks: false,
                      showLabels: false,

                      onChanged: (dynamic value){
                        setState(() {
                          _value = value;
                        });
                      },
                    )
                  // Slider(value: 20/1024, onChanged: (double){
                    //
                    //
                    // })
                    //
                ),


                const SizedBox(width:250,),

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
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ViewDataLogScreen()));
                      },
                      child: const Text('View'),
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
                      },
                      child: const Text('Email '),
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
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen2()));
                      },
                      child: const Text('Delete '),
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
                  Text('Stored Analysis Data ',style:TextStyle(color:Colors.white),),
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