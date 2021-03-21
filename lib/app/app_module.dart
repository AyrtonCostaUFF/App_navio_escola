import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import '../features/login/login.dart';
import '../shared/custom_dio/custom_dio.dart';

import 'app_bloc.dart';
import 'app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => CustomDio())
  ];

  @override
  Widget get view => Login();

  static Inject get to => Inject<AppModule>.of();
}
