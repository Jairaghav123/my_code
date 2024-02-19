

import 'package:flutter/material.dart';

class carspeed extends StatelessWidget {
  final int speed ;
  const carspeed({
    Key? key, required this.speed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShaderMask(
          blendMode:BlendMode.srcIn,
          shaderCallback:(bounds)=> LinearGradient(begin:Alignment.topCenter,end:Alignment.bottomCenter,colors: [Colors.white,Colors.white.withOpacity(0)]).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
          child:  Text(speed.toString(),style:TextStyle(
            fontSize:96,fontWeight: FontWeight.w500,
            color:Colors.white,
            height:0.96,
          ),),
        ),
        const Text("Km/h",style:TextStyle(
            fontSize:20,color:Colors.white30
        ),)
      ],
    );
  }
}
