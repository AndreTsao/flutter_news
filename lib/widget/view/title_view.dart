import 'package:flutter/material.dart';
import 'package:flutternews/commom/check.dart';
import 'package:flutternews/commom/ui.dart';
import 'package:flutternews/config/const.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/8/16 8:12 PM
 *
 */
class TitleView extends StatelessWidget {
  final String title;
  final String subTitle;

  TitleView(this.title, {this.subTitle = ''});

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: appBarColor,
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          width: 5.0,
          height: 15.0,
        ),
        new Space(width: 10.0),
        new Text(
          "$title",
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
        ),
        new Spacer(),
        new Text(
          strNoEmpty(subTitle) ? '$subTitle' : '',
          style: TextStyle(color: mainTextColor),
        ),
        new Space()
      ],
    );
  }
}
