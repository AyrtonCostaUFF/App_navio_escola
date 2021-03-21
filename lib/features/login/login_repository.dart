import 'package:primeiro_app/features/login/login_model.dart';
import 'package:primeiro_app/shared/custom_dio/custom_dio.dart';

class LoginRepository {
  final CustomDio() _client;

  LoginRepository(this._client);

  Future<List<UserModel>> getPosts() async {
      var response = await _client.get("/posts");
      return (response.data as List)
          .map((item) => UserModel.fromJson(item))
          .toList();
    
  }
  
  Future<int> createPost(Map<String, dynamic> data) async {
    var response = await _client
        .post('https://navio-escola-uff.herokuapp.com/usuarios/cadastro');
    print(response);
  }


  Future<int> updatePost(Map<String, dynamic> data,int id) async {
    try {
      var response = await _client.patch("/posts/$id", data: data);
      return response.statusCode;
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
