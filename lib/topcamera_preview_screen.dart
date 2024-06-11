import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen1.dart';
import 'package:flutter_ics_homescreen/screensize.dart';

class TopCameraview extends StatefulWidget {
  const TopCameraview({super.key});

  @override
  State<TopCameraview> createState() => _TopCameraviewState();
}

class _TopCameraviewState extends State<TopCameraview> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        color:Colors.blueGrey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: screenHeight*0.7,
              width: screenWidth*0.8,
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                color:Colors.blue,
                borderRadius:BorderRadius.all(Radius.circular(30)),

              ),
              child:const Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt,color:Colors.white,size:200,),
                  Text("Top CAM image",style:TextStyle(color:Colors.white,fontSize:30,fontWeight:FontWeight.w500),),
                ],
              ),
            ),






            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [

                SizedBox(width:120,height:50,child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen1()));
                }, child: const Text("Back",style:TextStyle(color:Colors.white,fontSize: 20))))
              ],
            ),
            const Spacer(),
            Row(

              children: [
                const SizedBox(width:screenWidth*0.10,height: screenHeight*0.10,),
                Container(
                  alignment: Alignment.center,
                  width: screenWidth*.8,
                  height: screenHeight*0.06,
                  child:  const Text('Top CAM Preview ',style: TextStyle(fontSize: 25,color:Colors.white),),
                ),



              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}




