import 'package:flutter/material.dart';
import 'package:flutternews/api/statistics_model.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/9/2 9:09 AM
 *
 */

class Statics extends StatelessWidget {
  final StatisticsModel statisticsModel;

  Statics(this.statisticsModel)

  Color strColor(name) {
    switch (name) {
      case '全国确诊':
        return Colors.red;
        break;
      case '疑似病例':
        return Colors.amber;
        break;
      case '治愈人数':
        return Colors.green;
        break;
      case '死亡人数':
        return Colors.grey;
        break;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


}