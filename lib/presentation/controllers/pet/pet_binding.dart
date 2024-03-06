

import 'package:get/get.dart';
import 'package:openapi_getx/data/datasource/pet_repository_impl.dart';
import 'package:openapi_getx/domain/usecases/get_petlist.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetPetList(Get.find<PetRepositoryImpl>()));
    Get.put(PetController(Get.find()), permanent: true);
  }
}