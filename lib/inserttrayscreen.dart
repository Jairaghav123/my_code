import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/startAnalysisscreen.dart';
import 'package:flutter_ics_homescreen/tray1analysisscreen.dart';
import 'package:intl/intl.dart';


class InsertTrayscreen extends StatefulWidget {
  const InsertTrayscreen({super.key});

  @override
  State<InsertTrayscreen> createState() => _InsertTrayscreenState();
}

class _InsertTrayscreenState extends State<InsertTrayscreen> {
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
                    width: screenwidth*0.60 ,child: Text("Knemetic solutions",style: TextStyle(fontSize:40,fontWeight:FontWeight.normal,color:Colors.white),)),
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
            const Spacer(flex: 2,),
            Container(
              height:screenheight*.165,
              width: screenwidth*0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // Adjust the value as needed
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Action for top camera view button
                },
                child: const Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Icon(Icons.input_sharp,size:40,),
                    Text('Insert Tray to begin'),
                  ],
                ),
              ),
            ),
            const Spacer(),
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
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Tray1Analysis()));
                      },
                      child: const Text('Next '),
                    ),
                  ),
                ),
                const SizedBox(width:10,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const StartAnalysis()));
                      },
                      child: const Text('Back '),
                    ),
                  ),
                ),


              ],
            ),
            const Spacer(),
            Container(

                //color:Colors.wh,
                decoration:BoxDecoration(
                    border: Border.all(color:Colors.blue,width: 2)

                ),
              width: screenwidth*.8,
              height: screenheight*0.1,
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.analytics_outlined,color: Colors.white,),
                  Text('Insert filled Tray to start analysis .... ',style:TextStyle(color:Colors.white),),
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