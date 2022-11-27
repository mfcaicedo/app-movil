import 'package:get/get.dart';

import 'home_controller.dart';

class HomePageBinding implements Bindings{
  const HomePageBinding();

  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
  }


}