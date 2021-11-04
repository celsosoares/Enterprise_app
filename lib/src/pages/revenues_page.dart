import 'package:flutter/material.dart';
import 'package:enterprise/src/widget/revenuesTopWidget.dart';
import 'package:enterprise/src/pages/home_page.dart';


class RevenuesPage extends StatefulWidget {
  @override
  _RevenuesPageState createState() => _RevenuesPageState();
}

class _RevenuesPageState extends State<RevenuesPage> {
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
          RevenuesTopWidget(),
           SizedBox(
            height: 15.0,
          ),
          ListTile(
            title: Text("Operações de Crédito"),
          ),
          ListTile(
            title: Text("Receitas Correntes"),
          ),
          ListTile(
            title: Text("Serviços Administrativos e Comerciais Gerais"),
          ),
          ListTile(
            title: Text("Contribuições Sociais"),
          ),
          ListTile(
            title: Text("Receitas de Serviços"),
          ),
          ListTile(
            title: Text("Alienação de Bens"),
          ),
          ListTile(
            title: Text("Receita Patrimonial"),
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