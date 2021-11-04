import 'package:flutter/material.dart';
import 'package:enterprise/src/widget/expenditureTopWidget.dart';
import 'package:enterprise/src/pages/home_page.dart';


class ExpenditurePage extends StatefulWidget {
  @override
  _ExpenditurePageState createState() => _ExpenditurePageState();
}

class _ExpenditurePageState extends State<ExpenditurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () =>  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> HomePage())),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        children: <Widget>[ 
          ExpenditureTopWidget(),
           SizedBox(
            height: 15.0,
          ),
          ListTile(
            title: Text("Tópico 1"),
          ),
          ListTile(
            title: Text("Tópico 2"),
          ),
          ListTile(
            title: Text("Tópico 3"),
          ),
          ListTile(
            title: Text("Tópico 4"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
				currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.house),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text("Info")
          ),
        ],
      ),
    );
  }

}