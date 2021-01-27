import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:primeiro_app/piso.dart';

// Classe que cria a Avaliação padrão.
class Avaliacao extends StatefulWidget {
  final String parametro;

  const Avaliacao({Key key, this.parametro}) : super(key: key);
  @override
  _AvaliacaoState createState() => _AvaliacaoState();
}

enum SingingCharacter { sim, nao }

class _AvaliacaoState extends State<Avaliacao> {
  SingingCharacter _character = SingingCharacter.sim;

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(height: 20.0),
      ExpansionTile(
          title: Text(
            widget.parametro,
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            SizedBox(height: 20.0),
            RatingBar.builder(
              initialRating: 0,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            ListTile(
              title: const Text(
                'Sim',
                style: TextStyle(fontSize: 22),
              ),
              leading: Radio(
                value: SingingCharacter.sim,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Não', style: TextStyle(fontSize: 22)),
              leading: Radio(
                value: SingingCharacter.nao,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Cria(parametro: 'Grau'),
          ]),
    ]);
  }
}

// Classe que cria Label com o texto passado como parâmetro.
class Cria extends StatefulWidget {
  final String parametro;

  const Cria({Key key, this.parametro}) : super(key: key);
  @override
  _CriaState createState() => _CriaState();
}

class _CriaState extends State<Cria> {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        obscureText: true,
        style: TextStyle(fontSize: 22),
        decoration: InputDecoration(
            labelText: widget.parametro, border: OutlineInputBorder()),
      ),
    ]);
  }
}

class Checagem extends StatefulWidget {
  final String parametro1;
  final String parametro2;
  final Piso parametro3;

  const Checagem({Key key, this.parametro1,
                           this.parametro2, 
                           this.parametro3}) : super(key: key);
  @override
  _ChecagemState createState() => _ChecagemState();
}

class _ChecagemState extends State<Checagem> {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          SizedBox(height: 20),
          ExpansionTile(
            title: Text(widget.parametro1,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(widget.parametro2, style: TextStyle(fontSize: 22)),
                  onTap: () {
                    Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => widget.parametro3)
                    );
                  },
                )
              ],
            ),
      ]
    );
  }
}
