import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'Data/variables/variables.dart';
class AnalysisScreenWidget extends StatelessWidget {
  final  TextEditingController;

  const AnalysisScreenWidget({
    super.key,
    required this.screenwidth,
    required this.screenheight, required this.TextEditingController, required this.hinttext,
  });

  final double screenwidth;
  final double screenheight;
  //final String innertext ;
  final String hinttext ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child:


          Container(alignment:Alignment.center,color:Colors.blue ,width:screenwidth*0.40,height:screenheight*0.05,child: TextField(
            controller:TextEditingController,
            keyboardType: TextInputType.text,
            textAlign:TextAlign.center,
            style: textStyleForAllText (),
            decoration: InputDecoration(
              hintText: hinttext,
                  hintStyle:textStyleForAllText ()
            ),

              ),),


    );
  }
}
