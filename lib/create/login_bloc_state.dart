import 'package:equatable/equatable.dart';
import 'package:primeiro_app/user.dart';
import 'login_bloc_bloc.dart';


abstract class LoginBlocState extends Equatable {
  const LoginBlocState();
}

class LoginBlocInitial extends LoginBlocState {
  @override
  List<Object> get props => [];
}

class StartLoginState extends LoginBlocState {
  @override
  List<Object> get props => null;
}

class SucessLoginState extends LoginBlocState {
  final User user;

  SucessLoginState({this.user});

  @override
  List<Object> get props => [user];
}

class ErroLoginState extends LoginBlocState {
  final String message;

  ErroLoginState({this.message});

  @override
  List<Object> get props => [message];
}
