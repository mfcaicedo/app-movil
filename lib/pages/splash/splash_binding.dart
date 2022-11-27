import 'package:app_turistica/pages/splash/splash_controller.dart';

import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';

class SplashBinding implements Bindings {
  const SplashBinding();

  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
          () => SplashController(authController: Get.find<AuthController>()),
    );
  }
}