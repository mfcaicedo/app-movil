import 'package:get/get.dart';

import 'login_page_controller.dart';

class LoginPageBinding implements Bindings {
  const LoginPageBinding();

  @override
  void dependencies() {
    Get.lazyPut<loginPageController>(() => loginPageController());
  }
}