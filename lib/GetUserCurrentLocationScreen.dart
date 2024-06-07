import 'dart:async';

import 'package:flutter/material.dart' ;
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class GetUserCurrentLocationScreen extends StatefulWidget {
  const GetUserCurrentLocationScreen({super.key});

  @override
  State<GetUserCurrentLocationScreen> createState() => _GetUserCurrentLocationScreenState();
}

class _GetUserCurrentLocationScreenState extends State<GetUserCurrentLocationScreen> {
  Completer <GoogleMapController> _controller=Completer();
  static const  CameraPosition _KGooglePlex= const CameraPosition(target: LatLng(28.656473,77.242943),zoom:14.4746);
  String _output="0" ;
   String current_latitude="None" ;
   String current_longitude="None" ;
  List <Marker> marker=[];
  List <Marker> list= [

    Marker(markerId: MarkerId("1"),position: LatLng(28.656473,77.242943),
        infoWindow: InfoWindow(title:"My Current position")),

    Marker(markerId: MarkerId("1"),position: LatLng(28.7083
        ,77.3357),
        infoWindow: InfoWindow(title:"Home")),
  ];




  // @override
  // void initState() {
  //   // TODO: implement initState
  //   marker.addAll(list);
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomSheet:Container(
         height:50,
         width: 200,

         color:Colors.white24,
         child: Center(child: Text("latitude: $current_latitude \n longitude: $current_longitude")),
       ),
      body: SafeArea(

        child: GoogleMap(initialCameraPosition: _KGooglePlex,
            mapType: MapType.normal,
            myLocationButtonEnabled:true,
            myLocationEnabled:true,
            markers: Set<Marker>.of(marker),
            onMapCreated: (GoogleMapController controller){


              _controller.complete(controller);

            }),


      ),


      floatingActionButton:FloatingActionButton(
        onPressed: () async {

         print("function call");
          getusercurrentlocation().then((value) async {
            print("My Current Location");
            current_latitude=value.latitude.toString();
            current_longitude=value.longitude.toString();
            setState(() {

            });


            await placemarkFromCoordinates(double.parse(current_latitude), double.parse(current_longitude)).then((placemarks) {
              var output="No result found";
              if(placemarks.isNotEmpty){
                output=placemarks[0].toString();
                setState(() {
                  _output=output ;
                  print(_output);
                });
              }
            });
           CameraPosition cameraPosition=CameraPosition(target: LatLng(double.parse(current_latitude),double.parse(current_latitude)),
           zoom: 14);


            marker.add(Marker(markerId: MarkerId("Current Location"),
                position: LatLng(double.parse(current_latitude),double.parse(current_latitude)),
                infoWindow:await  InfoWindow(title:_output)),

            );

           final GoogleMapController Controller =  await _controller.future ;


           Controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

            setState(() {

            });


          });
        },

        child: const Icon(Icons.location_disabled_outlined),

      ),


    );
  }

  Future<Position> getusercurrentlocation()  async {
     await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace) {

       print("Error");
  });


   return await Geolocator.getCurrentPosition();
}
}


