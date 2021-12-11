import 'dart:async';

import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

FutureOr<Request> authInterceptor(request) async {
  var storage = Get.find<SharedPreferences>();
  var token = storage.getString(StorageConstants.token);


   request.headers['X-Requested-With'] = 'XMLHttpRequest';
   request.headers['Authorization'] = 'Bearer $token';

  return request;
}
