import 'package:flutter/material.dart';

class RumorPage extends StatefulWidget {
  @override
  _RumorPageState createState() => _RumorPageState();
}

class _RumorPageState extends State<RumorPage>
    with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;
  
  
  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new Scaffold(
      body: new Center(
        child: new Text("RumorPage"),
      ),
    );
  }
}