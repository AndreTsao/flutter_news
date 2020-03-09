import 'package:flutter/cupertino.dart';

class RootTabBar extends StatefulWidget {
  final List pages;
  final int currentIndex;

  RootTabBar({this.pages, this.currentIndex = 0});

  @override
  State<StatefulWidget> createState() => new RootTabBarState();
}

class RootTabBarState extends State<RootTabBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class TabBarModel {
  final String title;
  final Widget icon;
  final Widget selectIcon;
  final Widget page;

  const TabBarModel({this.title, this.page, this.icon, this.selectIcon});
}
