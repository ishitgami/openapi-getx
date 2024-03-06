import 'package:flutter/material.dart';
import 'package:openapi_getx/comman/constant.dart';
import 'package:openapi_getx/comman/enum.dart';
import 'package:openapi_getx/presentation/pages/home_page/widget/status_container_widget.dart';

class StatusChangeContainer extends StatelessWidget {
  const StatusChangeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(SPACE4),
      padding: const EdgeInsets.all(SPACE8),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(RADIUS),
      ),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatusContainer(status: Status.available),
            StatusContainer(status: Status.pending),
            StatusContainer(status: Status.sold),
          ]),
    );
  }
}