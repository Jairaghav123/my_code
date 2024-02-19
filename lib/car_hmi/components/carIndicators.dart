
import 'package:flutter/material.dart';

class carIndicators extends StatelessWidget {
  const carIndicators({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(


      mainAxisAlignment:MainAxisAlignment.center,


      children: [
        TextButton(onPressed: (){}, child: const Icon(Icons.keyboard_double_arrow_left,color:Colors.lightGreenAccent,),),
        TextButton(onPressed: (){}, child: const Icon(Icons.deblur,color:Colors.lightBlue,),),
        TextButton(onPressed: (){}, child: const Icon(Icons.deblur_sharp,color:Colors.lightBlue,),),
        TextButton(onPressed: (){}, child: const Icon(Icons.keyboard_double_arrow_right,color:Colors.lightGreenAccent,),),
      ],

    );
  }
}
