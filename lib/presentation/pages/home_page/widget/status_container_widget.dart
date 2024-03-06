

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:openapi_getx/comman/constant.dart';
import 'package:openapi_getx/comman/enum.dart';
import 'package:openapi_getx/comman/extension.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_controller.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    required this.status,
    super.key,
  });

  final Status status;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetController>(builder: (petController) {
      return GestureDetector(
        onTap: () {
          petController.changeStatus(status);
        },
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: SPACE12, vertical: SPACE4),
          decoration: BoxDecoration(
              color: petController.selectedStatus == status
                  ? Colors.green[400]
                  : null,
              borderRadius: BorderRadius.circular(RADIUS)),
          child: Text(
            status.name.toString().capitalize(),
            style: TextStyle(
                color: petController.selectedStatus == status
                    ? Colors.white
                    : Colors.black),
          ),
        ),
      );
    });
  }
}