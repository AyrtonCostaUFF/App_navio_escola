import 'package:flutter/material.dart';
import 'package:primeiro_app/uteis.dart';
import 'local.dart';

class Piso extends StatefulWidget {
  @override
  _PisoState createState() => _PisoState();
}

class _PisoState extends State<Piso> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Piso',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[

            Avaliacao(parametro: 'Material'),

            Avaliacao(parametro:'Estado de Conservação'),
                   
            Avaliacao(parametro:'Sistema de Drenagem'),
                 
          ],
        ),
      ),
    ));
  }
}
