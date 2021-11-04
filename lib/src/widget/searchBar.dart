import 'package:flutter/material.dart';
import 'package:enterprise/src/pages/search_page.dart';

class SearchBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0,

      /*child: TextField(
        decoration: InputDecoration(
          hintText: "Buscar",
          suffixIcon: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              ),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 32.0,vertical: 12.0),
        ),
      ),*/

        child: SingleChildScrollView(  
          child: Container(
          //padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 100.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                //height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                  child: Text(
                    "Buscar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                  elevation: 5.0,
                  padding: EdgeInsets.fromLTRB(75.0, 10.0, 75.0, 10.0),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                ),
              ),
          ]
      ),
      
    )));
  }

}