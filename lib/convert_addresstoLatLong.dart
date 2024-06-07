

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Convert_addresstoLatLong extends StatefulWidget {
  const Convert_addresstoLatLong({super.key});

  @override
  State<Convert_addresstoLatLong> createState() => _Convert_addresstoLatLongState();
}

class _Convert_addresstoLatLongState extends State<Convert_addresstoLatLong> {
  String _output = '';
  final TextEditingController _latitude_controller = TextEditingController();
  final TextEditingController _longitude_controller= TextEditingController();
  final TextEditingController _address_controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color:Colors.grey,height: 250,
                  child: _output==null?const Text("Address"):Text(_output)),
            ),

            Spacer(),
            TextField(
              keyboardType:TextInputType.text,
              controller: _address_controller,
              decoration: InputDecoration(
                  helperText: "Enter Address",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2,style:BorderStyle.solid),
                      borderRadius:BorderRadius.circular(10)
                  )



              ),
            ),
            Spacer(),

            Spacer(),
            ElevatedButton(
              onPressed:() async {

                await   locationFromAddress(_address_controller.text)
                    .then((locations) {
                  var output = 'No results found.';
                  if(locations.isNotEmpty){
                    output = locations[0].toString();
                    setState(() {
                      _output=output ;
                      print(_output);
                    });
                  }
                });

              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(


                  child:Text('Get your Address'),
                ),
              ),
            )
          ],),
      ),
    );
  }
}
