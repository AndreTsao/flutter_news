import 'package:flutter/material.dart';
import 'package:flutternews/config/const.dart';

class ComMomBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showShadow;
  final List<Widget> rightDMActions;
  final Color backgroundColor;
  final Color mainColor;
  final Widget titleW;
  final Widget leadingW;
  final PreferredSizeWidget bottom;
  final String leadingImg;

  const ComMomBar({
    this.title = '',
    this.showShadow = false,
    this.rightDMActions,
    this.backgroundColor = appBarColor,
    this.mainColor = Colors.white,
    this.titleW,
    this.bottom,
    this.leadingImg = '',
    this.leadingW,
  });

  @override
  Size get PreferredSize => new Size(100, 50);

  @override
  Widget build(BuildContext context) {
    return showShadow
        ? new Container(decoration: BoxDecoration(), child: new AppBar())
        : new AppBar();
  }
}
