import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_getx_boilerplate/shared/services/services.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

FutureOr<Request> requestInterceptor(request) async {
   var storage = Get.find<SharedPreferences>();
  var token = storage.getString(StorageConstants.token);

   request.headers['X-Requested-With'] = 'XMLHttpRequest';
   request.headers['Authorization'] = 'Bearer $token';

  EasyLoading.show(status: 'loading...');
  
  return request;
}
