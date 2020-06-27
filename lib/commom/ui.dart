import 'package:flutter/material.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/1/27 3:14 PM
 *
 */
class Space extends StatelessWidget {
  final double width;
  final double height;

  Space({this.width = 10.0, this.height = 10.0});

  @override
  Widget build(BuildContext context) {
    return new Container(width: width, height: height);
  }
}
