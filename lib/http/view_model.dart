/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/1/27 10:54 AM
 *
 */
 

class ViewModel {
  List dataListToModel(List<dynamic> data, model) {
    List list = new List();
    data.forEach((json) => list.add(model.fromJson(json)));
    return list;
  }
}
