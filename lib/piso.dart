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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            Avaliacao(titleCheck: 'Material'),
            Avaliacao(titleCheck: 'Estado de Conservação'),
            Avaliacao(titleCheck: 'Sistema de Drenagem'),
          ],
        ),
      ),
    ));
  }
}
