import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternews/config/const.dart';

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
        setState(() {
          currentIndex = index;
          pageController.jumpToPage(currentIndex);
        });
      },
      unselectedFontSize: 18.0,
    );

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
