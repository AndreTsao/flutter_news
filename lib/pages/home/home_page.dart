import 'package:flutter/material.dart';
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
      body: new Center(child: new Text("no data")),
    );
  }

  //请求数据
  getData() {

  }



}
