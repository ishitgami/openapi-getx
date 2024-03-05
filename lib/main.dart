import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_getx/dependency.dart';
import 'package:openapi_getx/presentation/app.dart';

void main() async{
  // final res = await  Openapi().getPetApi().findPetsByStatus();
  // print("response: $res");
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}
