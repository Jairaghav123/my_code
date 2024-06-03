import 'package:flutter/material.dart';
import 'package:flutter_ics_homescreen/screen1.dart';

class BottomCameraview extends StatefulWidget {
  const BottomCameraview({super.key});

  @override
  State<BottomCameraview> createState() => _BottomCameraviewState();
}

class _BottomCameraviewState extends State<BottomCameraview> {
  @override

  Widget build(BuildContext context) {
    final screenheight=MediaQuery.of(context).size.height ;
    final screenwidth=MediaQuery.of(context).size.width ;

    return Scaffold(

      body: Container(
        color:Colors.blueGrey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: screenheight*0.7,
              width: screenwidth*0.8,
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                color:Colors.blue,
                borderRadius:BorderRadius.all(Radius.circular(30)),

              ),
              child:const Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt,color:Colors.white,size:80,),
                  Text("Bottom CAM image",style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.w500),),
                ],
              ),
            ),






            Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [

                SizedBox(width:100,child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const Screen1()));
                }, child: const Text("Back")))
              ],
            ),

            Row(
              children: [
                SizedBox(width:screenwidth*0.10,height: screenheight*0.10,),
                SizedBox(
                  width: screenwidth*.8,
                  height: screenheight*0.06,
                  child:  ElevatedButton(
                    onPressed: () {
                      // Action for top camera view button
                    },
                    child: const Text('Bottom CAM Preview '),
                  ),
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




