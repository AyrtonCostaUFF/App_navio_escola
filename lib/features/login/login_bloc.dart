import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'login_model.dart';
import 'login_repository.dart';


class LoginBloc extends BlocBase {
 
 final LoginRepository repo;

  LoginBloc(this.repo);

  var listPost = BehaviorSubject<List<UserModel>>();
  Sink<List<UserModel>> get responseIn => listPost.sink;
  Stream<List<UserModel>> get responseOut => listPost.stream;
  
  void getPosts() async{
    responseIn.add(null);
    try{
    var res = await repo.getPosts();
    responseIn.add(res);
    }catch(e){
      listPost.addError(e);
    }
  }

  @override
  void dispose() {
    listPost.close();
    super.dispose();
  }
}
