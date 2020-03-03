import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  static SharedPreferences sp;
  //network state
  var connect;

  static init() async {
    sp = await SharedPreferences.getInstance();
  }
}
