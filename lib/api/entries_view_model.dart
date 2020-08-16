import 'dart:convert';

import 'package:flutternews/commom/check.dart';
import 'package:flutternews/http/view_model.dart';

import 'entries_model.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/8/16 5:03 PM
 *
 */
EntriesViewModel entriesViewModel = new EntriesViewModel();

class EntriesViewModel extends ViewModel {
  Future<dynamic> getData() async {
    final data = await EntriesReqModel().data();
    List list = new List();
    if (listNoEmpty(data)) {
      data.forEach((json) => list.add(EntriesModel.fromJson(json)));
    }
    return Future.value(list);
  }
}
