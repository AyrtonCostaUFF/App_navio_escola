import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';


import '../../create/login_bloc_bloc.dart';
import '../../shared/custom_dio/custom_dio.dart';
import 'login.dart';
import 'login_bloc.dart';
import 'login_repository.dart';

class LoginModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => LoginBloc(LoginModule.to.getDependency<LoginRepository>())),
        Bloc((i) => CreateBloc(LoginModule.to.getDependency<LoginRepository>())),
        //Bloc((i) => UpdateBloc(LoginModule.to.getDependency<LoginRepository>())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency(
           (i) => LoginRepository(AppModule.to.getDependency<CustomDio>())),
      ];

  @override
  Widget get view => Login();

  static Inject get to => Inject<LoginModule>.of();
}