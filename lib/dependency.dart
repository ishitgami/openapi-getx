import 'package:get/get.dart';
import 'package:openapi_getx/data/datasource/pet_remote_data_source.dart';
import 'package:openapi_getx/data/repository/pet_repository_impl.dart';

class DependencyCreator {
  static init() {
   
    Get.lazyPut(() => PetRemoteDataSourceImpl());
    Get.lazyPut(() => PetRepositoryImpl());

  }
}