// ignore_for_file: unnecessary_string_interpolations

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:openapi_getx/presentation/pages/home_page/home_page.dart';
import 'package:openapi_getx/presentation/pages/profile_page/profile_page.dart';
import 'package:openapi_getx/presentation/pages/splash_page/splash_page.dart';

class RouteHelper {
  static const String initial = '/';
  static const String home = '/home';
  static const String profile = '/profile';


  static String getSplashRoute() => '$initial';
  static String getHomeRoute() => '$home';
  static String getProfileRoute() => '$profile';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const SplashPage(),
    ),

     GetPage(
      name: home,
      page: () => const HomePage(),
    ),

    GetPage(
      name: profile,
      page: () => const profilePage(),
    ),
  ];
}