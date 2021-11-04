import 'package:flutter/material.dart';
import 'home_page.dart';

class PreviewPage extends StatefulWidget {
  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png", ),
              fit: BoxFit.cover,
            ),
          ),  
            child: SingleChildScrollView(  
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 100.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.jpg", ),
                    fit: BoxFit.fill,
                ),
              ), 
              ),
              Divider(
                height: 20.0,
                color: Colors.transparent,
              ),
              Text(
                "FIQUE DE OLHO",
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 45.0, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                  child: Text(
                    "COMEÇAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                  elevation: 5.0,
                  padding: EdgeInsets.fromLTRB(75.0, 0.0, 75.0, 0.0),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}