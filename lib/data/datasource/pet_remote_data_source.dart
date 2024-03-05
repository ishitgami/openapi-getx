import 'package:openapi/openapi.dart';

abstract class PetRemoteDataSource {
  Future<List<Pet>> getPetList();
}

class PetRemoteDataSourceImpl implements PetRemoteDataSource {
  Openapi openapi = Openapi();
  @override
  Future<List<Pet>> getPetList() async {
    try {
      final response = await openapi.getPetApi().findPetsByStatus();
      return response.data?.toList() ?? [];
    } catch (e) {
      rethrow;
    }
  }
}
