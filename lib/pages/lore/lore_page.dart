import 'package:flutter/material.dart';

class LorePage extends StatefulWidget {
  @override
  _LorePageState createState() {
    return _LorePageState();
  }
}

class _LorePageState extends State<LorePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new Scaffold(
      body: new Center(
        child: new Text('LorePage'),
      )
    );
  }
}
