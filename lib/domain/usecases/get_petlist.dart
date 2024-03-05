import 'package:dartz/dartz.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_getx/comman/failure.dart';
import 'package:openapi_getx/domain/repositories/pet_repository.dart';

class GetPetList {
  GetPetList(this._repository);
  final PetRepository _repository;

  Future<Either<Failure, List<Pet>>> execute() async {
    return await _repository.getPetList();
  }
}