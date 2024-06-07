import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart'as http;


class GooglePlacesApiScreen extends StatefulWidget {
  const GooglePlacesApiScreen({super.key});

  @override
  State<GooglePlacesApiScreen> createState() => _GooglePlacesApiScreenState();
}

class _GooglePlacesApiScreenState extends State<GooglePlacesApiScreen> {

  TextEditingController controller =TextEditingController();
  var uuid = Uuid();
  String _sessionToken="12345" ;
  List<dynamic> _placesList=[];

  @override
  void initState() {
    // TODO: implement initState

    controller.addListener(() {

      onChange();


    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        appBar: AppBar(title: const Text("Google Places API Screen",style:TextStyle(color:Colors.white),),
        centerTitle: true,
          elevation:10,
          backgroundColor: Colors.blue

        ),

        body:  Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                controller:controller ,
                decoration: const InputDecoration(
                  hintText: "Search Places"
                ),
              ),

              Expanded(flex:1,child: ListView.builder(
                itemCount:  _placesList.length,
                itemBuilder: (context,index){
                  return ListTile(
                    
                    title: Text(_placesList[index]["description"]),
                  );
                } ,))
            ],
          ),
        ),

      ),
    );
  }

  void onChange() {

    if(_sessionToken==null){

      setState(() {

        _sessionToken=uuid.v4();
      });

    }

    getSuggession(controller.text);
  }

  void getSuggession(String input) async {


    String kPLACES_API_KEY="AIzaSyCENewVN5Tu8d172WwutJHQSTE7wo9J2Ng" ;

    String baseURL="https://maps.googleapis.com/maps/api/place/autocomplete/json" ;
    String request = '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken';

    var response= await http.get(Uri.parse(request));
    var data= response.body.toString();
    if(response.statusCode==200)
      {

        setState(() {

          _placesList=jsonDecode(data) ['predictions'];
        });

      }

    else {

      throw Exception("Request Unsuccessful");
    }




  }
}
