import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:openapi_getx/comman/enum.dart';
import 'package:openapi_getx/comman/exception.dart';
import 'package:openapi_getx/comman/failure.dart';
import 'package:openapi_getx/domain/repositories/pet_repository.dart';

class PetRepositoryImpl extends PetRepository {
    Openapi openapi = Openapi();
  @override
  Future<Either<Failure, List<Pet>>> getPetList(Status status) async {
    try {
      final petAPI = openapi.getPetApi();
      final res = await petAPI.findPetsByStatus(status: status.name.toString());
      return Right(res.data?.asList() ?? []);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data.toString() ??
              'Error occured Please try again',
        ),
      );
    } 
  }
  
  @override
  Future<Either<Failure, Map<String, int>>> getInventory() async{
    try {
      final storeAPI = openapi.getStoreApi();
      final response = await storeAPI.getInventory();
      return Right(response.data?.asMap() ?? {});
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure('No internet connection'),
      );
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          e.response?.data.toString() ??
              'Error occured Please try again',
        ),
      );
    } 
  }
}
