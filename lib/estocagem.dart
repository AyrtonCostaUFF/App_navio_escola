import 'package:flutter/material.dart';
import 'package:primeiro_app/uteis.dart';
import 'piso.dart';

class Estocagem extends StatefulWidget {
  @override
  _EstocagemState createState() => _EstocagemState();
}

class _EstocagemState extends State<Estocagem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Estocagem',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[
            Checagem(parametro1: 'Estrutura', parametro2: 'Pisos', parametro3: Piso()),
            ExpansionTile(
                title: Text('Higienização',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    ));
  }
}
