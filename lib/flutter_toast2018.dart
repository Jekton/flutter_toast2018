import 'dart:async';

import 'package:flutter/services.dart';

class FlutterToast2018 {
  static const MethodChannel _channel =
      const MethodChannel('flutter_toast2018');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
