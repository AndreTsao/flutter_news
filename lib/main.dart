import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutternews/app.dart';
import 'package:flutternews/config/storage_manager.dart';

//the entrance of app
void main() async {
  //？？？
  WidgetsFlutterBinding.ensureInitialized();
  //初始化配置
  await StorageManager.init();

  runApp(MyApp());

  /// Android状态栏透明
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
