import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  static var box;

  Future<SharedPreferences> init() async {
    return await SharedPreferences.getInstance();
  }
}
