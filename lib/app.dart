import 'package:flutter/material.dart';
import 'package:flutternews/config/Config.dart';
import 'package:flutternews/pages/root/RootPage.dart';

class MyApp extends StatelessWidget {
  // This widget is the pages.root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTitle,
      //navigatorKey: navGK,
      theme: ThemeData(
        splashColor:Colors.transparent,
        primarySwatch: Colors.blue,
      ),
      home: new RootPage(),
    );
  }
}
