import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

import '../features/login/login_model.dart';
import '../features/login/login_repository.dart';


class CreateBloc extends BlocBase {
  final LoginRepository repo;

  CreateBloc(this.repo){
    responseOut = post.switchMap(observablePost);
  }

  String title;
  String body;

  var post = BehaviorSubject<UserModel>();

  UserModel get postValue => post.value;
  Stream<int> responseOut;
  Sink<UserModel> get postIn => post.sink;

  Stream<int> observablePost(UserModel data) async* {
    yield 0;
    try{
    var response = await repo.createPost(data.toJson());
    yield response;
    }catch(e){
      throw e;
    }
  }

  @override
  void dispose() {
    post.close();
    super.dispose();
  }
}
