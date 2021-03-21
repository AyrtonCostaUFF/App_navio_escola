import 'package:equatable/equatable.dart';
import 'login_bloc_bloc.dart';

abstract class LoginBlocEvent extends Equatable {
  const LoginBlocEvent();
}

class SingUp extends LoginBlocEvent {
  final String email;
  final String password;

  SingUp({this.email, this.password});

  @override
  List<Object> get props => [email, password];
}
