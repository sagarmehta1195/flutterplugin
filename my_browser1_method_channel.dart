import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_browser1_platform_interface.dart';

/// An implementation of [MyBrowser1Platform] that uses method channels.
class MethodChannelMyBrowser1 extends MyBrowser1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_browser1');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  Future<String?> getPlatformVersion1() async {

    final   version1 = await methodChannel.invokeMethod<String>('openPage','SETTING');
    return version1;
  }
}
