import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primeiro_app/uteis.dart';
import '../../create/login_bloc_bloc.dart';
import '../../create/login_bloc_state.dart';
import '../../resources/strings.dart';
import '../../place.dart';
import '../../uteis.dart';
import 'login_model.dart';
import 'login_module.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {
  var bloc = LoginModule.to.getBloc<CreateBloc>();

  Controller controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text(
            Strings.title_login,
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
                children: <Widget> [

                  TextFormField(
                    onSaved: (value) => bloc.title = value,
                    validator: (value) => value.isEmpty
                      ? "O email não pode ser nulo"
                      : null,
                    decoration: InputDecoration(labelText: "Email"),
                  ),

                  SizedBox(height: 10),

                  TextFormField(
                    onSaved: (value) => bloc.body = value,
                    validator: (value) => value.isEmpty
                      ? "A senha não pode ser nulo"
                      : null,
                    maxLines: 3,
                    decoration: InputDecoration(labelText: "Senha"),
                  ),

                  SizedBox(height: 40),
                 
                  ElevatedButton(
                      child: Text(
                        "Enviar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (controller.validate()) {
                          bloc.postIn.add(UserModel(
                              user: bloc.title, password: bloc.body, ));
                        }
                      },
                    ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}


class Controller {
  var formKey = GlobalKey<FormState>();

  bool validate() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else
      return false;
  }
}
