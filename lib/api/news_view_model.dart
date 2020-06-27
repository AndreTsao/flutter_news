import 'package:flutternews/api/news_model.dart';
import 'package:flutternews/commom/check.dart';
import 'package:flutternews/http/view_model.dart';

/**
 * @Description:按时间线获取事件
 * @Author: AndrewChao
 * @Date: 2020/1/27 10:53 AM
 *
 */
TimeNewsViewModel timeNewsViewModel = new TimeNewsViewModel();

class TimeNewsViewModel extends ViewModel {
  Future<dynamic> getTimeNews() async {
    final data = await TimeNewsReqModel().data();
    List list = new List();

    if (listNoEmpty(data)) {
      data.forEach((json) => list.add(TimeNewsModel.fromJson(json)));
    }
    return Future.value(list);
  }
}
