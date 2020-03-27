import 'dart:async';

import 'package:flutter/services.dart';

class Flutterimaplugin {
  static const MethodChannel _channel =
      const MethodChannel('flutterimaplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
