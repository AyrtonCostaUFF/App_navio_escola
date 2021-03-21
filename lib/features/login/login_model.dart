class UserModel {
  UserModel({
    this.user,
    this.password,
  });

  final String user;
  final String password;

  factory UserModel.fromJson(Map<dynamic, dynamic> json) => UserModel(
        user: json["user"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "password": password,
      };
}
