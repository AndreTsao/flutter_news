import 'package:flutter/material.dart';
import 'package:flutternews/api/statistics_model.dart';
import 'package:flutternews/commom/check.dart';

class Statics extends StatelessWidget {
  final StatisticsModel statisticsModel;

  Statics(this.statisticsModel);

  @override
  Widget build(BuildContext context) {
    if (statisticsModel == null) {
      return LinearProgressIndicator();
    }
    List personInfo = [
      {'label': '全国确诊', 'value': '${statisticsModel?.confirmedCount ?? 0}'},
      {'label': '疑似病例', 'value': '${statisticsModel?.suspectedCount ?? 0}'},
      {'label': '治愈人数', 'value': '${statisticsModel?.curedCount ?? 0}'},
      {'label': '死亡人数', 'value': '${statisticsModel?.deadCount ?? 0}'},
    ];
    bool contains1Big = statisticsModel.remark1.contains('：');
    bool contains1Small = statisticsModel.remark1.contains(':');
    bool containsOr = contains1Big || contains1Small;
    Pattern splitStr = contains1Big ? '：' : ':';

    //TODO 什么意思
    List note1 = strNoEmpty(statisticsModel?.note1) && containsOr
        ? statisticsModel.note1.split(splitStr)
        : ['未知', '未知'];
    List note2 = strNoEmpty(statisticsModel?.note2) && containsOr
        ? statisticsModel.note2.split(splitStr)
        : ['未知', '未知'];
    List note3 = strNoEmpty(statisticsModel?.note3) && containsOr
        ? statisticsModel.note3.split(splitStr)
        : ['未知', '未知'];
    List remark1 = strNoEmpty(statisticsModel?.remark1) && containsOr
        ? statisticsModel.remark1.split(splitStr)
        : ['未知', '未知'];
    List remark2 = strNoEmpty(statisticsModel?.remark2) && containsOr
        ? statisticsModel.remark2.split(splitStr)
        : ['未知', '未知'];
    List staticsInfo = [
      {'label': '${note1[0]}', 'value': '${note1[1]}'},
      {'label': '${note2[0]}', 'value': '${note2[1]}'},
      {'label': '${note3[0]}', 'value': '${note3[1]}'},
      {'label': '${remark1[0]}', 'value': '${remark1[1]}'},
      {'label': '${remark2[0]}', 'value': '${remark2[1]}'},
    ];


  }
}

class PersonInfoModel {
  String label;
  String value;

  PersonInfoModel(Map value) {
    this.label = value['label'];
    this.value = value['value'];
  }
}
