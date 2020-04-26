import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternews/config/const.dart';
import 'package:flutternews/widget/scroll/my_behavior.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bar/common_bar.dart';

class RootTabBar extends StatefulWidget {
  final List pages;
  final int currentIndex;

  RootTabBar({this.pages, this.currentIndex = 0});

  @override
  State<StatefulWidget> createState() => new RootTabBarState();
}

class RootTabBarState extends State<RootTabBar> {
  var pages = new List<BottomNavigationBarItem>(); //viewpager
  int currentIndex;
  var contents = new List<Offstage>();
  PageController pageController;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
    pageController = PageController(initialPage: currentIndex);
    for (int i = 0; i < widget.pages.length; i++) {
      TabBarModel model = widget.pages[i];
      pages.add(
        new BottomNavigationBarItem(
            icon: model.icon,
            activeIcon: model.selectIcon,
            title: new Text(model.title, style: new TextStyle(fontSize: 12.0))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: pages,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      unselectedItemColor: mainTextColor,
      fixedColor: fixedColor,
      onTap: (int index) {
        setState(() => currentIndex = index);
        pageController.jumpToPage(currentIndex);
      },
      unselectedFontSize: 18.0,
      selectedFontSize: 18.0,
      elevation: 0,
    );

    String title() {
      switch (currentIndex) {
        case 0:
          return '首页';
          break;
        case 1:
          return '辟谣';
          break;
        case 2:
          return '防护';
          break;
        default:
          return '知识';
          break;
      }
    }

    return new Scaffold(
      bottomNavigationBar: new Theme(
          data: new ThemeData(
            canvasColor: Colors.grey[50],
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          child: new Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: lineColor, width: 0.2))),
            child: bottomNavigationBar,
          )),
      appBar: ComMomBar(
        titleW: new AnimatedSwitcher(
          duration: Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) {
            var tween = Tween<double>(begin: 0, end: 1);
            return FadeTransition(
              child: child,
              opacity: tween.animate(animation),
            );
          },
          child: new Text(
            title() ?? '',
            key: ValueKey(title() ?? ''),
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        rightDMActions: <Widget>[
          new MaterialButton(
            onPressed: () => launch('https://github.com/ahyangnb/ncov_2019'),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: new Text(
              '开源地址',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: new ScrollConfiguration(
        behavior: MyBehavior(),
        child: new PageView.builder(
          itemBuilder: (BuildContext context, int index) =>
          widget.pages[index].page,
          controller: pageController,
          itemCount: pages.length,
          physics: Platform.isAndroid
              ? new ClampingScrollPhysics()
              : new NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() => currentIndex = index);
          },
        ),
      ),
    );
  }
}

class TabBarModel {
  final String title;
  final Widget icon;
  final Widget selectIcon;
  final Widget page;

  const TabBarModel({this.title, this.page, this.icon, this.selectIcon});
}
