import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/defectselectionscreen.dart';
import 'package:flutter_ics_homescreen/inserttrayscreen.dart';
import 'package:flutter_ics_homescreen/resultscreen.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screen2.dart';
import 'package:flutter_ics_homescreen/screen3.dart';
import 'package:flutter_ics_homescreen/screen4.dart';
import 'package:flutter_ics_homescreen/startAnalysisscreen.dart';
import 'package:flutter_ics_homescreen/topcamera_preview_screen.dart';
import 'package:flutter_ics_homescreen/tray1analysisscreen.dart';
import 'package:flutter_ics_homescreen/tray2alaysisscreen.dart';
import 'package:flutter_ics_homescreen/tray3analysisscreen.dart';
import 'package:flutter_ics_homescreen/viewdatalogscreen.dart';

import 'bootscreen.dart';
import 'bottomcamera_preview_screen.dart';

void main()
{
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return          const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:
     BootScreen() ,

    );
  }
}
