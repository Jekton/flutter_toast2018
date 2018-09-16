import 'package:flutter/material.dart';

import 'package:flutter_toast2018/flutter_toast2018.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Center(
          child: RaisedButton(
            child: Text('toast'),
            onPressed: () => FlutterToast2018.toast('Toast from Flutter', ToastDuration.short),
          ),
        ),
      ),
    );
  }
}
