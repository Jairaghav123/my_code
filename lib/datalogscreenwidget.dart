import 'package:flutter/material.dart';
class DataLogScreenWidget extends StatelessWidget {
  const DataLogScreenWidget({
    super.key,
    required this.screenwidth,
    required this.screenheight, required this.innertext,
  });

  final double screenwidth;
  final double screenheight;
  final String innertext ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child:


      Row(
        children: [
          Container(alignment:Alignment.center,color:Colors.blue ,width:screenwidth*0.25,height:screenheight*0.05,child: Text(innertext,style: const TextStyle(color:Colors.white,fontSize: 20),),),

        ],
      ),


    );
  }
}
