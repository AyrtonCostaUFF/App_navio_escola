import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primeiro_app/create/login_bloc_bloc.dart';
import 'features/login/login.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login()
     //home: MultiBlocProvider(
      //child: Login(),
      //providers: [
       // BlocProvider<LoginBlocBloc>(
       //   create: (context) => LoginBlocBloc(),
    //    ),
     // ],
    //  child: BlocBuilder(builder: (BuildContext context, state) => Login() ,),
    // ),
    );
  }
}
