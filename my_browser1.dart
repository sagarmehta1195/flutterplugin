
import 'my_browser1_platform_interface.dart';

class MyBrowser1 {
  Future<String?> getPlatformVersion() {
    return MyBrowser1Platform.instance.getPlatformVersion();
  }

  Future<String?> getPlatformVersion1() {
    return MyBrowser1Platform.instance.getPlatformVersion1();
  }

}
