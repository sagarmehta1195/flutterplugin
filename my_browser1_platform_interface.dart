import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_browser1_method_channel.dart';

abstract class MyBrowser1Platform extends PlatformInterface {
  /// Constructs a MyBrowser1Platform.
  MyBrowser1Platform() : super(token: _token);

  static final Object _token = Object();

  static MyBrowser1Platform _instance = MethodChannelMyBrowser1();

  /// The default instance of [MyBrowser1Platform] to use.
  ///
  /// Defaults to [MethodChannelMyBrowser1].
  static MyBrowser1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyBrowser1Platform] when
  /// they register themselves.
  static set instance(MyBrowser1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  Future<String?> getPlatformVersion1() {
    throw UnimplementedError('Setting () has not been implemented.');
  }


}
