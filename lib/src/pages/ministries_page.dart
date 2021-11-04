import 'package:flutter/material.dart';
import 'package:enterprise/src/widget/ministriesTopWidget.dart';
import 'package:enterprise/src/pages/home_page.dart';


class MinistriesPage extends StatefulWidget {
  @override
  _MinistriesPageState createState() => _MinistriesPageState();
}

class _MinistriesPageState extends State<MinistriesPage> {
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
          MinistriesTopWidget(),
           SizedBox(
            height: 15.0,
          ),
          ListTile(
            title: Text("Ministério da Agricultura"),
          ),
          ListTile(
            title: Text("Ministério da Cidadania"),
          ),
          ListTile(
            title: Text("Ministério da Ciência"),
          ),
          ListTile(
            title: Text("Ministério da Defesa"),
          ),
          ListTile(
            title: Text("Ministério da Economia"),
          ),
          ListTile(
            title: Text("Ministério da Educação"),
          ),
          ListTile(
            title: Text("Ministério da Infraestrutura"),
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