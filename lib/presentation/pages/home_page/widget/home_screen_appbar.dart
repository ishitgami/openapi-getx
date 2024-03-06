import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openapi_getx/utils/routes.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10),
              child: Text(
                'Pet Store',
                style: GoogleFonts.montserrat(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteHelper.profile);
          },
          child: CircleAvatar(
            backgroundColor: Colors.red[100],
            child: const Text('I'),
          ),
        ),
      ],
    );
  }
}
