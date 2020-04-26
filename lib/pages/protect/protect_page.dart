import 'package:flutter/material.dart';

class ProtectPage extends StatefulWidget {
  @override
  _ProtectPageState createState() => _ProtectPageState();
}

class _ProtectPageState extends State<ProtectPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return new Scaffold(
      body: new Center(
        child: new Text("ProtectPage"),
      )
    );
  }

}
