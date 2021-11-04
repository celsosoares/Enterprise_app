import 'package:flutter/material.dart';
import 'src/pages/home_page.dart';
import 'src/pages/preview_page.dart';


class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.blue),
      home: PreviewPage()
    );
  }
}
