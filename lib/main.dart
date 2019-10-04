import 'dart:math';

import 'package:cara_coroa/moeda.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String valor;

  void _exibirResultado(){
     var itens = ["moeda_cara.png","moeda_coroa.png"];
     var number = Random().nextInt(itens.length);
     var resultado = itens[number];
     Navigator.push(context, MaterialPageRoute(builder: (context) => Moeda(resultado)));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: (){ _exibirResultado();},
            )
          ],
        ),
      ),
    );
  }
}
