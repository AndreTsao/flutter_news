import 'package:flutternews/commom/check.dart';
import 'package:intl/intl.dart';

/**
 * @Description:
 * @Author: caoyanchang
 * @Date: 2020/7/24 5:34 PM
 *
 */
String formatTimeStampToString(timestamp, [format]) {
  assert(timestamp != null);

  int time = 0;

  if (timestamp is int) {
    time = timestamp;
  } else {
    time = int.parse(timestamp.toString());
  }

  if (format == null) {
    format = 'yyyy-MM-dd HH:mm:ss';
  }

  DateFormat dateFormat = new DateFormat(format);

  var date = new DateTime.fromMillisecondsSinceEpoch(time * 1000);

  return dateFormat.format(date);
}

String timeHandle(int time) {
  double createTimeDouble = strNoEmpty('$time') ? time / 1000 : 0;
  int createTime = int.parse('${stringDisposeWithDouble(createTimeDouble)}');
  return '${formatTimeStampToString(createTime) ?? '未知'}';
}
