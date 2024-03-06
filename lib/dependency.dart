import 'package:get/get.dart';
import 'package:openapi_getx/data/datasource/pet_repository_impl.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => PetRepositoryImpl());
  }
}