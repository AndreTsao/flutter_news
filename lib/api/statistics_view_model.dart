import 'package:flutternews/api/statistics_model.dart';
import 'package:flutternews/http/view_model.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/8/16 4:54 PM
 *
 */
StatisticsViewModel statisticsViewModel = new StatisticsViewModel();

class StatisticsViewModel extends ViewModel {
  Future<dynamic> getData() async {
    final Map data = await StatisticsReqModel().data();
    if (data != null && data.isNotEmpty) {
      return StatisticsModel.fromJson(data);
    }
    return Future.value({});
  }
}
