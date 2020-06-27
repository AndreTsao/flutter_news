import 'package:flutter/material.dart';
import 'package:flutternews/commom/ui.dart';
import 'package:flutternews/commom/win_media.dart';
import 'package:flutternews/config/const.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/1/27 3:04 PM
 *
 */
class LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: winWidth(context),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new CircularProgressIndicator(),
          new Space(),
          new Text(
            '加载中',
            style: TextStyle(color: mainTextColor),
          )
        ],
      ),
    );
  }
}
