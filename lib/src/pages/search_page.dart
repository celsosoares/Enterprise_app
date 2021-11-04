import 'package:flutter/material.dart';
import 'package:enterprise/src/pages/home_page.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget _buildOrganName() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nome do Orgão",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildOrganCode() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Codigo do Orgão",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }
  
  Widget _buildEconomicCategory() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Categoria Econômica",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildManagingUnit() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Nome da Unidade Gestora",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildReleaseDate() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Data de Lançamento",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

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
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: 
                  new Image.asset("assets/images/logo.jpg"),
                  height: 190,
                  width: 190,
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                height: 5.0,
                thickness: 3.0,
                color: Colors.green,
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildOrganName(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildOrganCode(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildEconomicCategory(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildManagingUnit(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildReleaseDate(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                  child: Text(
                    "PESQUISAR",
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
              Divider(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}