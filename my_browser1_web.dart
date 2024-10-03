// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'my_browser1_platform_interface.dart';

/// A web implementation of the MyBrowser1Platform of the MyBrowser1 plugin.
class MyBrowser1Web extends MyBrowser1Platform {
  /// Constructs a MyBrowser1Web
  MyBrowser1Web();

  static void registerWith(Registrar registrar) {
    MyBrowser1Platform.instance = MyBrowser1Web();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }
}
