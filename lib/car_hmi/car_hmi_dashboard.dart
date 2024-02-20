

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myanimations/constants.dart';

import 'components/carIndicators.dart';
import 'components/carspeed.dart';
import 'components/gearprinter.dart';
import 'components/myspeedline.dart';
import 'components/outershape.dart';
import 'components/speedlimit.dart';
import 'components/timeandtemp.dart';

class CarHMIDashboard extends StatefulWidget {
  const CarHMIDashboard({super.key});

  @override
  State<CarHMIDashboard> createState() => _CarHMIDashboardState();
}

class _CarHMIDashboardState extends State<CarHMIDashboard> {
   final List<double> speedLinesOpacities=[1,
     .80,
     0.60,
     0.40,
     .30,
     0.20,
     0.15,
     0.10
   ];
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size ;
    return  Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(title:const Text("Car HMI Dashboard"),
      centerTitle:true,),
      body: SizedBox(
        child: (size.width > 1184 && size.height > 456)?
        Container(
          margin:EdgeInsets.all(16),
          color:Colors.black,
          constraints:const BoxConstraints(maxWidth:1480,minWidth:1184,maxHeight: 604,minHeight: 456),
          child: AspectRatio(
            aspectRatio:2.59,
            child:LayoutBuilder(
              builder: (context,constraints) {
                return CustomPaint(
                  painter: HmiShape(),
                  child: Column(
                    children:  [
                      timeandtemp(constraints: constraints,),
                      Expanded(
                          child: Stack(
                        children: [
                          Column(

                            children:   [
                              const SizedBox(height:defaultPadding*1.25,),

                              const carIndicators(),
                              const SizedBox(height:60,),
                              const carspeed(speed: 50,),
                              const SizedBox(height:30,),
                              const speedlimit(),
                              const SizedBox(height:defaultPadding*0.7,),
                              Gearprinter_widget(constraints: constraints,),

                        ],
                      ),
                      ...List.generate(speedLinesOpacities.length, (index) => Positioned(


                          bottom: 20 + (2*index).toDouble(),
                            left: constraints.maxWidth*0.13 -(30 * index),
                            height: constraints.maxHeight*0.8,
                            width: constraints.maxWidth*0.31,

                          child:Opacity(
                            opacity: speedLinesOpacities[index],
                            child: CustomPaint(
                        painter: SpeedLinePainter(),),
                          ))),


                          ...List.generate(speedLinesOpacities.length, (index) => Positioned(


                              bottom: 20 + (2*index).toDouble(),
                              right: constraints.maxWidth*0.13 -(30 * index),
                              height: constraints.maxHeight*0.8,
                              width: constraints.maxWidth*0.31,

                              child:Opacity(
                                opacity: speedLinesOpacities[index],
                                child: Transform.scale(
                                  scaleX: -1,
                                  child: CustomPaint(
                                    painter: SpeedLinePainter(),),
                                ),
                              )))
                  //     ) ))

                        ],

                          )),



                    ],
                  ),

                );
              }
            ),
            
            
          ),
        ): const Center(child:Text("Screen is too small to show the UI"),)
      ),

    );
  }
}





