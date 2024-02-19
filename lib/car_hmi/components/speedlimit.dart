
import"package:flutter/material.dart";

import '../../constants.dart';


class speedlimit extends StatelessWidget {
  const speedlimit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Icon(Icons.speed,color:primarycolor,),
        const SizedBox(width:defaultPadding/2,),
        Text("100 Km/h",style:TextStyle(color:primarycolor),)
      ],
    );
  }
}
