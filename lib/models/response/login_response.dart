import 'package:meta/meta.dart';
import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    LoginResponse({
        required this.result,
        required this.status,
        required this.message,
      
    });

    Result result;
  bool status;
  dynamic message;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        result: Result.fromJson(json["result"]),
       status: json["status"],
       message:json["message"],
    );

    Map<String, dynamic> toJson() => {
        "result": result.toJson(),
        "status":status,
        "message":message,
    };
}

class Result {
    Result({
      required this.token,
        required this.email,
        required this.role,
      
    });

    String email;
    String role;
    String token;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
      token: json["token"],
        email: json["email"],
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
      "token":token,
        "email": email,
        "role": role,
    };
}
