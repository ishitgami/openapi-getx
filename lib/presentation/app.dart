import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_binding.dart';
import 'package:openapi_getx/presentation/pages/home_page/home_page.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: HomePage(),
    );
  }
}
