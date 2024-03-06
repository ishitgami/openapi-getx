import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:openapi_getx/comman/constant.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_controller.dart';

class StoreInventoryContainer extends StatelessWidget {
  const StoreInventoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetController>(
      builder: (petController) {
        return Container(
          margin: const EdgeInsets.all(SPACE4),
          padding: const EdgeInsets.all(SPACE8),
          decoration: BoxDecoration(
              color: Colors.amber[100],
              borderRadius: BorderRadius.circular(RADIUS)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                petController.inventory.entries.map((entry) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.key.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Text(entry.value.toString()),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      }
    );
  }
}
