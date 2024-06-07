import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Marker> marker=[];
  List <Marker> list=const [

    Marker(markerId: MarkerId("1"),position: LatLng(28.656473,77.242943),
    infoWindow: InfoWindow(title:"My Current position")),

    Marker(markerId: MarkerId("1"),position: LatLng(28.7083
        ,77.3357),
        infoWindow: InfoWindow(title:"Home")),
  ];
  Completer <GoogleMapController> _controller=Completer();
  static final CameraPosition _KGooglePlex= const CameraPosition(target: LatLng(28.656473,77.242943),zoom:14.4746);


  @override
  void initState() {
    // TODO: implement initState
    marker.addAll(list);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: GoogleMap(initialCameraPosition: _KGooglePlex,
        mapType: MapType.hybrid,
        myLocationButtonEnabled:true,
        myLocationEnabled:true,
        markers: Set<Marker>.of(marker),
        onMapCreated: (GoogleMapController controller){


          _controller.complete(controller);

        }),


      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () async {
          GoogleMapController controller=await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(const CameraPosition(target: LatLng(28.7083
              ,77.3357),
            zoom: 14
          )));
          setState(() {

          });
        },

        child: const Icon(Icons.location_disabled_outlined),

      ),


    );
  }
}
