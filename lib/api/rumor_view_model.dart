import 'dart:convert';

import 'package:flutternews/api/rumor_model.dart';
import 'package:flutternews/commom/check.dart';
import 'package:flutternews/http/req_model.dart';
import 'package:flutternews/http/view_model.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/8/2 12:08 PM
 *
 */

RumorListReqViewModel rumorListReqViewModel = new RumorListReqViewModel();

class RumorListReqViewModel extends ViewModel {
  /*
  * 获取最新辟谣
  * */
  Future<dynamic> getRumor() async {
    final data = await RumorListReqModel().data(); //请求
    List list = new List();
    if (listNoEmpty(data)) {
      data.forEach((json) => list.add(RumorListModel.fromJson(json)));
    }
    return Future.value(list);
  }
}
