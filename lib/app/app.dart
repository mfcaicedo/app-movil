import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../pages/routes/route_pages.dart';
import '../pages/routes/routes_names.dart';
import 'app_binding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: const AppBinding(),
      initialRoute: RouteNames.splash,
      getPages: RoutePages.all,
    );
  }
}