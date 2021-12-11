import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_boilerplate/api/base_provider.dart';
import 'package:flutter_getx_boilerplate/models/models.dart';
import 'package:flutter_getx_boilerplate/modules/auth/auth.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ApiProvider extends BaseProvider {
  Future<Response> login(String path, LoginRequest data) {
print(data.toJson());
print(path.toString());


    return post(path, data.toJson());
   
  }

  Future<Response> register(String path, RegisterRequest data) {
  
    return post(path, data.toJson());
  }

  Future<Response> getUsers(String path) {
    print(path.toString());
    return get(path);
  }
}
