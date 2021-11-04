import 'package:flutter/material.dart';
import 'src/pages/home_page.dart';
import 'src/pages/preview_page.dart';


void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Enterprise",
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
      ),
      home: PreviewPage(),
    );
  }

}