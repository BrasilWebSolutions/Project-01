import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador",
      home:  Home())); //MaterialApp
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _contar = 0;
  String _infoTexto = "Pode entrar";

  void _changeContar(int delta){
    setState(() {
      _contar += delta;

      if(_contar < 0){
        _infoTexto = "Menor que ZERO";
      }else if(_contar <= 10){
        _infoTexto = "Pode entrar";
      }else{
        _infoTexto = "Maior que DEZ";
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Pessoa: $_contar",
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                onPressed: (){
                  _changeContar(1);
                },
              ),
            ),
            // Button
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                child: Text(
                  "-1",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                onPressed: (){
                  _changeContar(-1);
                },
              ),
            ),

          ],
        ),
        Text(_infoTexto,
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30.0))
      ],
    ); //Column;
  }
}
