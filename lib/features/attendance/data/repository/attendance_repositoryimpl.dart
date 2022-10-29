import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../../../core/exception/cached_exception.dart';
import '../../../../core/failure/cached_failure.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/entity/position_enitity.dart';
import '../../domain/repository/attendance_repository.dart';
import '../datasources/local_datasources/position_datasouces.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final PositionDatasources positionDatasources;

  AttendanceRepositoryImpl({required this.positionDatasources});
  @override
  Future<Either<Failure, PositionEntity>> doGetPosition(
    double longitude,
    double latitude,
    DateTime? timestamp,
    double accuracy,
    double altitude,
    double heading,
    double speed,
  ) async {
    try {
      final result = await positionDatasources.addPosition(
          longitude, latitude, timestamp, accuracy, altitude, heading, speed);
      final entity = PositionEntity(
          longitude: result.longitude, latitude: result.latitude);
      return Right(entity);
    } on CachedException {
      return Left(CachedFailure());
    }
  }

  @override
  Future<Either<Failure, List<PositionEntity>>>
      doGetAllPositionHistory() async {
    try {
      final result = await positionDatasources.getAllElement();
      log("========== sampe repo impl dengan jumlah $result");
      List<PositionEntity> positionEntities = [];
      for (var element in result) {
        positionEntities.add(PositionEntity(
            longitude: element.longitude, latitude: element.latitude));
      }

      log("====== lengt dari ylist baru : ${positionEntities.length}");
      return Right(positionEntities);
    } on CachedException catch (e) {
      return Left(CachedFailure());
    }
  }
}
