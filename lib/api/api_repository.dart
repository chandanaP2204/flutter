import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_boilerplate/models/models.dart';
import 'package:flutter_getx_boilerplate/models/response/users_response.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import 'api.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;
  Future<LoginResponse?> login(LoginRequest data) async {
   print(LoginRequest.fromJson(data.toJson()).toString());
   print(data.toString());
    final res = await apiProvider.login('/api/v1/core/auth/token', data);
    print(res.statusCode);
    if (res.statusCode == 200) {
   print(res.body.toString());
      return LoginResponse.fromJson(res.body);
 
    }
  }

  Future<RegisterResponse?> register(RegisterRequest data) async {
    final res = await apiProvider.register('/api/register', data);
    
    if (res.statusCode == 200) {
   
      return RegisterResponse.fromJson(res.body);
    }
  }

  Future<UsersResponse?> getUsers() async {
   
    final res = await apiProvider.getUsers('/api/v1/auth/mcm/order');
print(res.body.toString());
    if (res.statusCode == 200) {
      return UsersResponse.fromJson(res.body);
    }
  }
}
