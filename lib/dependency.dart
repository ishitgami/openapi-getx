import 'package:get/get.dart';
import 'package:openapi_getx/data/datasource/pet_remote_data_source.dart';
import 'package:openapi_getx/data/repository/pet_repository_impl.dart';
import 'package:openapi_getx/domain/repositories/pet_repository.dart';

class DependencyCreator {
  static init() {
   
    Get.lazyPut(() => PetRemoteDataSourceImpl());
    Get.lazyPut(() => PetRepositoryImpl());

  }
}