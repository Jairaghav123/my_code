import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/tray2alaysisscreen.dart';
import 'package:intl/intl.dart';


class Tray1Analysis extends StatefulWidget {
  const Tray1Analysis({super.key});

  @override
  State<Tray1Analysis> createState() => _Tray1AnalysisState();
}

class _Tray1AnalysisState extends State<Tray1Analysis> {
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
            const SizedBox(height:100),
            Container(
              height:screenheight*.3,
              width: screenwidth*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // Adjust the value as needed
              ),
              child:  Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(width:screenwidth*0.8,height:screenheight*0.1, decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                  ),),
                  SizedBox(height:10,),
                  const Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0%'),
                      Text('100%'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
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
                      },
                      child: const Text('Restart Tray 1'),
                    ),
                  ),
                ),
                const SizedBox(width:10,height:50,),

                Container(
                  alignment: Alignment.center,
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
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Tray2Analysis()));
                      },
                      child: const Text('Insert Tray2 Next '),
                    ),
                  ),
                ),
                const SizedBox(width:10,),
                Container(
                  alignment: Alignment.center,
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
                      },
                      child: const Text('Back '),
                    ),
                  ),
                ),


              ],
            ),
            const Spacer(),
            Container(


              decoration:BoxDecoration(
                  border: Border.all(color:Colors.blueGrey,)

              ),
              width: screenwidth*.8,
              height: screenheight*0.1,
              child:  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.analytics_outlined,color: Colors.white,),
                  Text('Tray 1 Analysis in progress please wait ',style:TextStyle(color:Colors.white),),
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