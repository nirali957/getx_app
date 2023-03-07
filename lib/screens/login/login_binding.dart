import 'package:get/get.dart';
import 'package:getx_app/screens/login/login_screen.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<LoginScreen>(LoginScreen());
  }
}
