import 'package:flutter/material.dart';
import 'package:flutternews/config/Config.dart';
import 'package:flutternews/pages/root/RootPage.dart';
import 'package:nav_router/nav_router.dart';

class MyApp extends StatelessWidget {
  // This widget is the pages.root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTitle,
      navigatorKey: navGK,
      theme: ThemeData(
        indicatorColor: appBarColor,
        scaffoldBackgroundColor: bgColor,
        hintColor: Colors.grey.withOpacity(0.3),
        splashColor: Colors.transparent,
        canvasColor: Colors.transparent,
      ),
      home: new RootPage(),
    );
  }
}
