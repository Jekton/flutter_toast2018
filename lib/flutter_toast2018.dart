import 'dart:async';

import 'package:flutter/services.dart';

enum ToastDuration {
  short, long
}

class FlutterToast2018 {
  static const MethodChannel _channel =
  const MethodChannel('example.com/flutter_toast2018');

  static Future<bool> toast(String msg, ToastDuration duration) async {
    var argument = {
      'content': msg,
      'duration': duration.toString()
    };
    var success = await _channel.invokeMethod('toast', argument);
    return success;
  }
}
