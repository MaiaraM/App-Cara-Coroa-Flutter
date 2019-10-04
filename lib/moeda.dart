import 'package:flutter/material.dart';


class Moeda extends StatefulWidget {
  String moeda;

  Moeda(this.moeda);

  @override
  _MoedaState createState() => _MoedaState();
}

class _MoedaState extends State<Moeda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/${widget.moeda}"),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
