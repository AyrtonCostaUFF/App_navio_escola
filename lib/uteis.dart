import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Classe que cria a Avaliação padrão.
// @param: titleCheck - título da tela de avaliação.
class Avaliacao extends StatefulWidget {
  final String titleCheck;

  const Avaliacao({Key key, this.titleCheck}) : super(key: key);
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
            widget.titleCheck,
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
            Cria(titleLabel: 'Grau'),
          ]),
    ]);
  }
}

// Classe que cria Label com o texto passado como parâmetro.
// @param titleLabel: título do Label.
class Cria extends StatefulWidget {
  final String titleLabel;

  const Cria({Key key, this.titleLabel}) : super(key: key);
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
            labelText: widget.titleLabel, border: OutlineInputBorder()),
      ),
    ]);
  }
}

// Classe que cria a tela da lista de checagem
// @param title: título da tela
// @poram
class Checagem extends StatefulWidget {
  var title;
  var parameters = [];

  Checagem({Key key, this.title, this.parameters}) : super(key: key);
  @override
  _ChecagemState createState() => _ChecagemState();
}

class _ChecagemState extends State<Checagem> {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(height: 20),
      ExpansionTile(
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        children: <Widget>[
          for (int cont = 0; cont < widget.parameters.length; cont += 2)
            ListTile(
              title:
                  Text(widget.parameters[cont], style: TextStyle(fontSize: 22)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => widget.parameters[cont + 1]));
              },
            ),
        ],
      ),
    ]);
  }
}

// Classe que recebe os títulos da lista de checagem e chama a classe Avaliacao
// para construir a lista com os títulos passados.
// @param: titleRated - título da lista de checagem.
// @param: titles - subtítulos da lista de checagem.
class Avaliado extends StatefulWidget {
  final String titleRated;
  var titles = [];

  Avaliado({Key key, this.titleRated, this.titles}) : super(key: key);
  @override
  _AvaliadoState createState() => _AvaliadoState();
}

class _AvaliadoState extends State<Avaliado> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.titleRated,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              for (int cont = 0; cont < widget.titles.length; cont += 1)
                Avaliacao(titleCheck: widget.titles[cont]),
            ],
          ),
        ),
      ),
    );
  }
}

class Botao extends StatefulWidget {
  final String titleButton;
  var screen;

  Botao({Key key, this.titleButton, this.screen}) : super(key: key);
  @override
  _BotaoState createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        ButtonTheme(
          height: 50,
          minWidth: 170,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => widget.screen
                )
              );
            },
            child: Text(widget.titleButton,
            style: TextStyle(fontSize: 24))
          ),
        ),
      ]
    );
  }
}
