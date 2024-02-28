



import 'package:flutter/material.dart';
import 'package:myanimations/shaderapp/widgets/rpmarc.dart';

import 'arcfuel.dart';

class speedgauge extends StatelessWidget {
  const speedgauge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [


          Padding(
            padding:  EdgeInsets.only(right:MediaQuery.of(context).size.width*0.03),
            child: SizedBox(//color:Colors.green,
              width: MediaQuery.of(context).size.width*0.10,
              height:MediaQuery.of(context).size.height*0.65 ,
              child: CustomPaint(
                painter: Myarcfuel(),
              ),
            ),
          ),







          ///////////////////////////////////////////////
          Padding(
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.23),
            child: Container(//color:Colors.green,
              width: MediaQuery.of(context).size.width*0.10,
              height:MediaQuery.of(context).size.height*0.65 ,
              child: CustomPaint(
                painter: Myarcrpm(),
              ),
            ),
          ),















          ShaderMask(
            blendMode: BlendMode.modulate,
            shaderCallback: (Rect bounds){
              return const RadialGradient(
                  tileMode: TileMode.clamp,
                  radius:0.55,

                  center:Alignment.center,stops:[0.6,0.7,0.8,1],colors: [Colors.white38,Colors.black12,Colors.black12,Colors.lightGreenAccent]).createShader(bounds);
            },
            child: Container(
                alignment: Alignment.center,

                height: MediaQuery.of(context).size.height*0.6,
                width:  MediaQuery.of(context).size.width*0.4,
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color:Colors.white,
                    backgroundBlendMode:BlendMode.colorDodge,
                    border: Border.all(color: Colors.green.withOpacity(0.8),width: 3)





                ),
                child:const Text("100",style:TextStyle(color:Colors.black,fontSize:50,fontWeight: FontWeight.w500))


            ),
          ),]
    );
  }
}