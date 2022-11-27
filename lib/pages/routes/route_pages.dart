import 'package:app_turistica/pages/routes/routes_names.dart';
import 'package:app_turistica/pages/sign_in/login_page.dart';
import 'package:app_turistica/pages/welcome/welcome_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../home/home_binding.dart';
import '../home/home_page.dart';
import '../sign_in/login_page_binding.dart';
import '../splash/splash_binding.dart';
import '../splash/splash_page.dart';
import '../welcome/welcome_binding.dart';

class RoutePages {
  const RoutePages._();

  static List<GetPage<dynamic>> get all {
    return [
      GetPage(
        name: RouteNames.home,
        page: () => const HomePage(),
        binding: const HomePageBinding(),
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const LoginPage(),
        binding: const LoginPageBinding(),
      ),
      GetPage(
        name: RouteNames.splash,
          page: () => const SplashPage(),
          binding: const SplashBinding(),
      ),
    ];
  }
}