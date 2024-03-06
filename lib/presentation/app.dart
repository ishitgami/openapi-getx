import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:openapi_getx/comman/themes.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_binding.dart';
import 'package:openapi_getx/presentation/pages/home_page/home_page.dart';
import 'package:openapi_getx/utils/routes.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      initialRoute: RouteHelper.getSplashRoute(),
      // theme : themeDark(context),
      getPages: RouteHelper.routes,
    );
  }
}
