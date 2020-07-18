// map串不为空
bool mapNoEmpty(Map value) {
  if (value == null) return false;
  return value.isNotEmpty;
}

/// 字符串不为空
bool strNoEmpty(String value) {
  if (value == null) return false;

  return value.trim().isNotEmpty;
}

bool listNoEmpty(List list) {
  if (list == null) return false;
  if (list.length == 0) return false;
  return true;
}

///去除后面的0
String stringDisposeWithDouble(v, [fix = 2]) {
  double b = double.parse(v.toString());
  String vStr = b.toStringAsFixed(fix);
  int len = vStr.length;
  for (int i = 0; i < len; i++) {
    if (vStr.contains('.') && vStr.endsWith('0')) {
      vStr = vStr.substring(0, vStr.length - 1);
    } else {
      break;
    }
  }
  if (vStr.endsWith('.')) {
    vStr = vStr.substring(0, vStr.length - 1);
  }
  return vStr;
}
