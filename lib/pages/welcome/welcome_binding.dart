import 'package:app_turistica/pages/welcome/welcome_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class WelcomePageBinding implements Bindings{
  const WelcomePageBinding();

  @override
  void dependencies() {
    Get.lazyPut<WelcomePageController>(() => WelcomePageController());
  }


}