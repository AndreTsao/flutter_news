import 'package:flutter/material.dart';
import 'package:flutternews/api/news_model.dart';
import 'package:flutternews/commom/check.dart';
import 'package:flutternews/commom/win_media.dart';
import 'package:flutternews/widget/view/web_view_page.dart';
import 'package:nav_router/nav_router.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/7/18 8:46 PM
 *
 */

class NewsCard extends StatelessWidget {
  final TimeNewsModel model;
  final EdgeInsetsGeometry padding;
  final bool isNew;

  NewsCard(this.model, {@required this.padding, this.isNew = false});

  @override
  Widget build(BuildContext context) {
    double createTimeDouble =
        strNoEmpty('${model?.createTime}') ? model.createTime / 1000 : 0;
    int createTime = int.parse('${stringDisposeWithDouble(createTimeDouble)}');
    bool isTimeStr =
        DateTime.now().millisecondsSinceEpoch - model?.createTime < 43200000;

    return Container(
      padding: padding,
      alignment: Alignment.centerLeft,
      width: winWidth(context),
      child: new FlatButton(
          onPressed: () => routePush(new WebViewPage(
              model?.sourceUrl ?? 'http://book.flutterj.com/',
              '${model?.title ?? '未知'}')),
          child: null),
    );
  }
}
