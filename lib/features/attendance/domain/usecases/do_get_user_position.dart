import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/failure/position_failure.dart';
import '../../../../core/service.dart/geolocator_service.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/position_enitity.dart';

class DoGetUserPosition extends Usecase<PositionEntity, NoParams> {
  final GeolocatorService geolocatorService;

  DoGetUserPosition({required this.geolocatorService});
  @override
  Future<Either<Failure, PositionEntity>> call(NoParams params) async {
    final position = await geolocatorService.getCurrentPosition();
    var positionEntity;

    position.fold((l) {
      return Left(PositionFailure());
    }, (r) {
      log("========= r:{${r.longitude}, ${r.latitude}}");
      positionEntity =
          PositionEntity(longitude: r.longitude, latitude: r.latitude);
    });
    return Right(positionEntity);
  }

  Future<double> getDistance(
      PositionEntity officePosition, PositionEntity userPosition) async {
    return await geolocatorService.getDistance(officePosition, userPosition);
  }
}
