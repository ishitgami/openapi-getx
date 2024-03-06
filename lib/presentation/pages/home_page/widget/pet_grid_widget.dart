

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_controller.dart';
import 'package:openapi_getx/presentation/pages/home_page/widget/pet_container_widget.dart';

class PetGridView extends StatelessWidget {
  const PetGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetController>(
      builder: (petController) {
        return Expanded(
          child: MasonryGridView.count(
            itemCount: petController.petList.length,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 10,
            itemBuilder: (context, index) {
              return PetContainer(
                index: index,
                pet: petController.petList[index],
              );
            },
          ),
        );
      }
    );
  }
}