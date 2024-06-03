import 'package:flutter/material.dart';
class AnalysisScreenWidget extends StatelessWidget {
  const AnalysisScreenWidget({
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


          Container(alignment:Alignment.center,color:Colors.blue ,width:screenwidth*0.40,height:screenheight*0.05,child: Text(innertext),),


    );
  }
}
