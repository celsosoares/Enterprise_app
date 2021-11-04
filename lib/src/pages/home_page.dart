import 'package:flutter/material.dart';
import 'package:enterprise/src/widget/homeTopWidget.dart';
import 'package:enterprise/src/widget/searchBar.dart';
import 'package:enterprise/src/pages/ministries_page.dart';
import 'package:enterprise/src/pages/revenues_page.dart';
import 'package:enterprise/src/pages/contracts_page.dart';
import 'package:enterprise/src/pages/expenditure_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        children: <Widget>[ 
          HomeTopWidget(),
           SizedBox(
            height: 15.0,
          ),
          SearchBar(),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Pesquisa rápida",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
          //    _buildListView()
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>ContractsPage()));
            },
          leading: Icon(Icons.picture_as_pdf_rounded),
          title: Text("Contratos"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>MinistriesPage()));
            },
            leading: Icon(Icons.house_siding_outlined),
            title: Text("Ministérios"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>ExpenditurePage()));
            },
            leading: Icon(Icons.money_off_csred_outlined),
            title: Text("Despesas"),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>RevenuesPage()));
            },
            leading: Icon(Icons.monetization_on),
            title: Text("Receitas"),
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