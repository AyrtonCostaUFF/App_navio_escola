import 'package:flutter/material.dart';
import 'package:primeiro_app/uteis.dart';


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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[

            Checagem(
              title: 'Estrutura',
              parameters: [
                'Pisos', Avaliado(
                  titleRated: 'Pisos', 
                  titles: [
                    'Material', 'Estado de Conservação','Sistema de Drenagem'
                  ],
                ),

                'Tetos', Avaliado(
                  titleRated: 'Tetos',
                  titles: [
                    'Acabamento', 'Estado de Conservação'
                  ],
                ),

                'Paredes e Divisórias', Avaliado(
                  titleRated: 'Paredes e Divisórias',
                  titles: [
                    'Acabamento', 'Estado de Conservação', 'Angulos'
                  ],
                ),

                'Portas', Avaliado( 
                  titleRated: 'Portas',
                  titles: [
                    'Superfície', 'Fechamento automático de portas','Barreiras',
                    'Estado de Conservação'
                  ],
                ),

                'Janelas e aberturas', Avaliado(
                  titleRated: 'Janelas e aberturas',                  
                  titles: [
                    'Superfície', 'Proteção', 'Estado de Conservação',
                  ],
                ),
              ],
            ),
                                  
            Checagem(title: 'Higienização',
                    parameters: ['Pisos', Avaliado()],),

            Checagem(title: 'Controle de Vetores e Pragas',
                    parameters: ['Pisos', Avaliado()],),

            Checagem(title: 'Matérias-primas',
                    parameters: ['Pisos', Avaliado()],)

          ],
        ),
      ),
    ));
  }
}
