import 'package:equatable/equatable.dart';

import 'package:equatable/equatable.dart';

class User extends Equatable{
  String name;
  String email;

  User({this.name, this.email});

  @override
  List<Object> get props => [name, email];

}


