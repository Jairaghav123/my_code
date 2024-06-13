import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter_ics_homescreen/analysisscreenwidgets.dart';
import 'package:flutter_ics_homescreen/screensize.dart';

import 'package:intl/intl.dart';

import 'Data/variables/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                          Text(DateFormat('EEEE dd MMM').format(DateTime.now()).toString(), style: textStyleForAllText ()),
                        ],
                      ),
                      Row(
                        children: [
                          Text( DateFormat('            HH:mm:ss').format(DateTime.now()).toString(), style: textStyleForAllText ()),
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
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Estate Name/ Agent Name', TextEditingController: agentNameController,),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Estate Address/ Agent Address',TextEditingController: agentAddressController),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Lorry Number',TextEditingController: lorryNumberController),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'No of Bags',TextEditingController: noofBagsController),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Lot Weight',TextEditingController: lotWeightController),
                    const SizedBox(height: 20,),

                  ],
                ),

                const SizedBox(width:screenWidth*0.10,),
                Column(
                  children: [
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Type and Grade',TextEditingController: typeAndGradeController),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Analysis Sample weight',TextEditingController: analysisSampleWeightController),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Analysis Sample weight',TextEditingController: analysisSampleWeight2Controller),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Lorry Sample weight',TextEditingController: lorrySampleWeightController),
                    const SizedBox(height: 20,),
                    AnalysisScreenWidget(screenwidth: screenWidth, screenheight: screenHeight, hinttext: 'Moisture level',TextEditingController: moistureLevelController),
                    const SizedBox(height: 20,),
                  ],
                )
              ],
            ),
            
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:140,height:50,child: ElevatedButton(onPressed: () async{

                  _saveData();
                     setState(() {



                       //  _dialogBuilder(context);

                     });



                    //Data will be save to file

                }, child: Text("Save",style:textStyleForAllText ()))),

                SizedBox(width:140,height:50,child:
                ElevatedButton(onPressed: ()

                {
                 Navigator.pushNamed(context, "Insert Tray pop up Screen");
                }, child: Text("Next",style: textStyleForAllText ()))),


                SizedBox(width:140,height:50,child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "HomeScreen");
                }, child: Text("Back",style: textStyleForAllText ())))
              ],
            ),
            const Spacer(),
            const SizedBox(width:screenWidth*0.10,height: screenHeight*0.10,),
            Container(
              alignment: Alignment.center,
              width: screenWidth*.8,
              height: screenHeight*0.06,
              child:  Text('Agent and Material Data ',style:textStyleBelowScreen ()),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  Future<void> _dialogBuilder(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("File Name"),
          content: TextField(controller: fileNameController),
          actions: [
            ElevatedButton(
              onPressed: () {

                convertToPdf();
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }


  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> agentData = prefs.getStringList('agents') ?? [];

    Map<String, String> newAgent = {
      'name': agentNameController.text,
      'address': agentAddressController.text,
      'lorryNumber': lorryNumberController.text,
      'noOfBags': noofBagsController.text,
      'lotWeight': lotWeightController.text,
      'typeAndGrade': typeAndGradeController.text,
      'analysisSampleWeight': analysisSampleWeightController.text,
      'analysisSampleWeight2': analysisSampleWeight2Controller.text,
      'lorrySampleWeight': lorrySampleWeightController.text,
      'moistureLevel': moistureLevelController.text,
      'AnalysisDate':DateTime.now().toString(),
      'MC':"20 %",
      'PB':"34 %",
      'AAA':"21 %",
      'AA':"49 %",
      'A':"16 %",
      'B':"78 %",
      'C':"67 %",
      'BB':"12 %",
      'BL':"19 %",
      'BERRY':"67 %",
      'BITS':"56 %",
      'HUSK/Stone':"34 %",

    };

    agentData.add(jsonEncode(newAgent));
    await prefs.setStringList('agents', agentData);
  }

  Future<void> convertToPdf() async {

    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          children: [pw.Text('Agent Name: ${agentNameController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Agent Address: ${agentAddressController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Lorry Number: ${lorryNumberController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('No of Bags: ${noofBagsController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Lot Weight: ${lotWeightController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Type and Grade: ${typeAndGradeController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Analysis Sample weight: ${analysisSampleWeightController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Analysis Sample weight: ${analysisSampleWeight2Controller.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Lorry Sample weight: ${lorrySampleWeightController.text} ',style:const pw.TextStyle(fontSize:14)),
            pw.Text('Moisture level: ${moistureLevelController.text} ',style:const pw.TextStyle(fontSize:14)),


          ]
        ),
      ),
    );

     final file = File("AllReports/${fileNameController.text}");
    await file.writeAsBytes(await pdf.save());

    //agentNameController.clear();
    agentAddressController.clear();
    lorryNumberController.clear();
    noofBagsController.clear();
    lotWeightController.clear();
    typeAndGradeController.clear();
    analysisSampleWeightController.clear();
    analysisSampleWeight2Controller.clear();
    lorrySampleWeightController.clear();
    moistureLevelController.clear();
    fileNameController.clear();

  }
}




