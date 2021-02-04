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

            Checagem(parametro: 'Estrutura',
                    parametros: ['Pisos', Piso(), 'Tetos', Piso(),
                                 'Paredes e Divisórias', Piso(),
                                 'Portas', Piso(),
                                 'Janelas e aberturas', Piso()],),
                                  
            Checagem(parametro: 'Higienização',
                    parametros: ['Pisos', Piso()],),

            Checagem(parametro: 'Higienização',
                    parametros: ['Pisos', Piso()],),

            Checagem(parametro: 'Higienização',
                    parametros: ['Pisos', Piso()],)

          ],
        ),
      ),
    ));
  }
}
