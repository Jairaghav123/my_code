import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screen3.dart';
import 'package:flutter_ics_homescreen/screen4.dart';
import 'package:intl/intl.dart';

import 'defectselectionscreen.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
                    width: screenwidth*0.60 ,child: Text("Knemetic solutions",style: TextStyle(fontSize:40,fontWeight:FontWeight.normal,color:Colors.white),)),Container(
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
            const Spacer(flex:2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height:screenheight*.15,
                  width: screenwidth*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Adjust the value as needed
                  ),
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen3()));
                      // Action for top camera view button
                    },
                    child: const Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera,size:40,),
                        Text('Top camera and light settings'),
                      ],
                    ),
                  ),
                ),


                Container(
                  height:screenheight*.15,
                  width: screenwidth*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Adjust the value as needed
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for top camera view button
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen4()));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt,size:40,),
                        Text('Bottom camera and light settings'),
                      ],
                    ),
                  ),
                ),

                Container(
                  height:screenheight*.15,
                  width: screenwidth*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Adjust the value as needed
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for top camera view button
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const defectselection()));
                    },
                    child: Text('Defect selction setting'),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height:screenheight*.1,
                  width: screenwidth*0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Adjust the value as needed
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for top camera view button
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen1()));
                      },
                      child: const Text('Back '),
                    ),
                  ),
                ),


              ],
            ),
            const Spacer(),
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
                    Text('Settings '),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}