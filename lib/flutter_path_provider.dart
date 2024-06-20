import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:pdf_text/pdf_text.dart';


class get_path extends StatefulWidget {
  const get_path({super.key});

  @override
  State<get_path> createState() => _get_pathState();
}




class _get_pathState extends State<get_path> {
  @override
  late  String temppath='';
  late String appdirectory='';
  late String appcache='';
  late String support='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //mydirectorypath();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directory'),
        centerTitle: true,
      ),

      body:  Center(
        child: Column(

          children: [ElevatedButton(onPressed: () {
            mydirectorypath();
          }, child: const Text("Get Path"))
            ,
            Text(temppath??null.toString()),
            Text(appdirectory??null.toString()),
            Text(appcache??null.
            toString()),
            Text( support??null.toString()),],

        ),
      ),
    );
  }

  void mydirectorypath() async {

    final pdf=pw.Document();
    pdf.addPage(pw.Page(
        build: (pw.Context context) {
          return pw.Center(
              child: pw.Column(
                  children: [pw.Text("hello world")]
              )
          );

        })
    );



    final tempdirectory=await getTemporaryDirectory();
    final applicationdirectory=await getApplicationDocumentsDirectory();
    final applicationcachedirectory=await getApplicationCacheDirectory();
    final applicationsupportdirectory=await getApplicationSupportDirectory();
    if(!(tempdirectory==null)) {

      temppath =tempdirectory.toString() ;
      appdirectory =applicationdirectory.toString() ;
      appcache = applicationcachedirectory.toString() ;
      support =applicationsupportdirectory.toString() ;
      print(temppath);
      print(appdirectory);
      print(appcache);
      print(support);
      setState(() {

      });
    }
    // File myfile=File('${applicationdirectory.path}/myfile');
    // myfile.writeAsBytes(await pdf.save());
  }




}