import 'package:flutter/material.dart';
import 'package:primeiro_app/uteis.dart';
import 'local.dart';
import 'uteis.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
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
                  Cria(parametro: 'Usuário'),

                  SizedBox(height: 10),

                  Cria(parametro: 'Senha'),

                  SizedBox(height: 40),

                  ButtonTheme(
                    height: 50,
                    minWidth: 100,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Local()
                          )
                        );
                      },
                      child: Text('Login', style: TextStyle(fontSize: 24)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}
