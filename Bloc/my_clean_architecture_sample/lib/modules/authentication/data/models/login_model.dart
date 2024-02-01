import 'dart:convert';
import 'package:my_clean_architecture_sample/modules/authentication/domain/entities/login_entity.dart';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel extends LoginEntity {
  const LoginModel({
    email,
    password,
  }) : super(
          email: email,
          password: password,
        );

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json["email"],
        password: json["password"],
      );

  factory LoginModel.fromBase(dynamic json) {
    if (json is LoginModel) {
      return json;
    }
    return LoginModel(
      email: json.email,
      password: json.password,
    );
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
