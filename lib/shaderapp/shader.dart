

import 'package:flutter/material.dart';
import 'package:myanimations/shaderapp/myshader_widget/myshaderCircle.dart' ;


class ShaderApp extends StatefulWidget {
  const ShaderApp({super.key});

  @override
  State<ShaderApp> createState() => _ShaderAppState();
}

class _ShaderAppState extends State<ShaderApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(useMaterial3: true),
      home:const Mycircle(),
    );
  }
}
