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
