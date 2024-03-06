import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openapi_getx/comman/images.dart';
import 'package:openapi_getx/utils/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // Navigate to the home page
    // Future.delayed(const Duration(seconds: 2), () {
    //   Get.offAllNamed(RouteHelper.getHomeRoute());
    // });
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    colorAnimation = ColorTween(
      begin: Colors.amber,
      end: Colors.blue,
    ).animate(controller!);
    super.initState();
  }

  AnimationController? controller;
  Animation<Color?>? colorAnimation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedBuilder(
              animation: controller!,
              builder: (context,child) {
                return Text(
                  'Pet Store',
                  style: GoogleFonts.zeyada(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color:colorAnimation!.value),
                );
              }
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 5,
            ),
            Image.asset(AppImages.SPLASH_IMAGE,
                height: MediaQuery.sizeOf(context).height / 2,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
