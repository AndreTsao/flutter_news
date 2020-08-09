import 'package:flutternews/config/api.dart';
import 'package:flutternews/http/req_model.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/8/9 9:18 PM
 *
 */
class RumorListReqModel extends ReqModel {
  @override
  String url() => API.getIndexRumorList;

  @override
  Map params() => {};

  Future data() => get();
}

class RumorListModel {
  String summary;
  String sourceUrl;
  int score;
  int rumorType;
  int id;
  String mainSummary;
  String title;
  String body;
  bool isOpen;

  RumorListModel({
    this.summary,
    this.sourceUrl,
    this.score,
    this.rumorType,
    this.id,
    this.mainSummary,
    this.title,
    this.body,
    this.isOpen = false,
  });

  RumorListModel.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    sourceUrl = json['sourceUrl'];
    score = json['score'];
    rumorType = json['rumorType'];
    id = json['id'];
    mainSummary = json['mainSummary'];
    title = json['title'];
    body = json['body'];
    isOpen = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['sourceUrl'] = this.sourceUrl;
    data['score'] = this.score;
    data['rumorType'] = this.rumorType;
    data['id'] = this.id;
    data['mainSummary'] = this.mainSummary;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
