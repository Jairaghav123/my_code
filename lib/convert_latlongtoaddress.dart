

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class COnvert_Latlongtoaddresss extends StatefulWidget {
  const COnvert_Latlongtoaddresss({super.key});

  @override
  State<COnvert_Latlongtoaddresss> createState() => _COnvert_LatlongtoaddresssState();
}

class _COnvert_LatlongtoaddresssState extends State<COnvert_Latlongtoaddresss> {
  String _output = '';
  final TextEditingController _latitude_controller = TextEditingController();
  final TextEditingController _longitude_controller= TextEditingController();

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
              keyboardType:TextInputType.number,
              controller: _latitude_controller,
              decoration: InputDecoration(
                helperText: "Enter latitude",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2,style:BorderStyle.solid),
                  borderRadius:BorderRadius.circular(10)
                )



              ),
            ),
            Spacer(),
            TextField(
              keyboardType:TextInputType.number,
              controller: _longitude_controller,
              decoration: InputDecoration(
                  helperText: "Enter longitude",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2,style:BorderStyle.solid),
                      borderRadius:BorderRadius.circular(10)
                  )

              ),
            ),
            Spacer(),
            ElevatedButton(
            onPressed:() async {
            
             await placemarkFromCoordinates(double.parse(_latitude_controller.text), double.parse(_longitude_controller.text)).then((placemarks) {
                var output="No result found";
                if(placemarks.isNotEmpty){
                  output=placemarks[0].toString();
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
