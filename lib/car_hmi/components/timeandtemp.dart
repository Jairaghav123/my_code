




import 'package:flutter/material.dart';

class timeandtemp extends StatelessWidget {
  const timeandtemp({
    Key? key, required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width:constraints.maxWidth*0.21,
      height:constraints.maxHeight*.10,
      child: Row(

        children: const [
          Text("5:21 PM",style:TextStyle(color:Colors.white),),
          Spacer(),
          Icon(Icons.sunny,color:Colors.orange,),
          SizedBox(width:5,),
          Text("18 °C",style:TextStyle(color:Colors.white),)
        ],
      ),
    );
  }
}
