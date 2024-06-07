import 'package:flutter/material.dart';
import 'package:jai/GetUserCurrentLocationScreen.dart';
import 'package:jai/GooglePlacesApiScreen.dart';
import 'package:jai/convert_addresstoLatLong.dart';
import 'package:jai/convert_latlongtoaddress.dart';
import 'package:jai/home_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map Box API Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GooglePlacesApiScreen()
      //const GetUserCurrentLocationScreen()
      //const Convert_addresstoLatLong()
      //const COnvert_Latlongtoaddresss(),
    );
  }
}


