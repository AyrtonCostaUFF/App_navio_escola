import 'package:flutter/material.dart';
import "processo.dart";
import 'uteis.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Local',
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
           
        body: Align(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Botao(titleButton: 'Navio Escola', screen: Processo()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
