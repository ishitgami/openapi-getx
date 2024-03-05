import 'package:dartz/dartz.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_getx/comman/failure.dart';

abstract class PetRepository {
  Future<Either<Failure, List<Pet>>> getPetList();
}