import 'package:flutter/material.dart';
class ResultScreenWidget extends StatelessWidget {
  const ResultScreenWidget({
    super.key,
    required this.screenwidth,
    required this.screenheight, required this.innertext, required this.percentagetext,
  });

  final double screenwidth;
  final double screenheight;
  final String innertext ;
  final String percentagetext ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child:


      Row(
        children: [
          Container(alignment:Alignment.center,color:Colors.blue ,width:screenwidth*0.25,height:screenheight*0.05,child: Text(innertext,style:const TextStyle(fontSize:20,color:Colors.white)),),
           Text("          $percentagetext%",style:const TextStyle(fontSize:20,color:Colors.white)),
        ],
      ),


    );
  }
}
