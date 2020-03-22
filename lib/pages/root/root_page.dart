import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutternews/config/const.dart';
import 'package:flutternews/widget/root_tabbar.dart';
import 'package:package_info/package_info.dart';

/****
 * 首页4个tab的容器
 */
class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  void initState() {
    super.initState();
    checkVersion();
  }

  @override
  Widget build(BuildContext context) {
    List<TabBarModel> pages = <TabBarModel>[
      new TabBarModel(
          title: '首页',
          icon: new LoadImage("assets/images/bottom_home.png", false),
          selectIcon: new LoadImage("assets/images/bottom_home.png", true))
    ];
    return null;
  }

  checkVersion() async {
//    if (Platform.isIOS) {
//      return;
//    }
//    final packageInfo = await PackageInfo.fromPlatform();
//    VersionModel model=
  }
}

class LoadImage extends StatelessWidget {
  final String img;
  final bool isSelect;

  LoadImage(this.img, [this.isSelect = false]);

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(bottom: 2.0),
        width: 30.0,
        height: 30.0,
        child: new Image.asset(
          img,
          fit: BoxFit.cover,
          gaplessPlayback: true,
          color: isSelect ? fixedColor : mainTextColor,
        ));
  }
}
