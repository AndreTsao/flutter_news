import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternews/api/news_model.dart';
import 'package:flutternews/api/news_view_model.dart';
import 'package:flutternews/commom/check.dart';
import 'package:flutternews/widget/card/news_card.dart';
import 'package:flutternews/widget/view/loading_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/**
 * @Description:
 * @Author: AndrewChao
 * @Date: 2020/1/27 10:51 AM
 *
 */
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  bool isReq = false;
  List data = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SmartRefresher(
        controller: _refreshController,
        onRefresh: _refreshData,
        child: isReq
            ? listNoEmpty(data)
                ? new ListView.builder(
                    itemBuilder: (context, index) {
                      TimeNewsModel model = data[index];
                      bool isNew = model.id == data[0].id;
                      return new NewsCard(
                        model,
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: isNew ? 10.0 : 10),
                        isNew: isNew,
                      );
                    },
                    itemCount: data.length,
                  )
                : new Center(
                    child: new Text(
                      '暂无数据',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  )
            : new LoadingView(),
      ),
    );
  }

  //请求数据
  getData() {
    timeNewsViewModel.getTimeNews().then((v) {
      setState(() {
        data = v;
        isReq = true;
      });
    });
  }

  Future<void> _refreshData() async {
    final Completer<Null> completer = new Completer<Null>();
    getData();

    new Future.delayed(new Duration(seconds: 2), () {
      completer.complete(null);
      _refreshController.refreshCompleted();
    });
    return completer.future;
  }
}
