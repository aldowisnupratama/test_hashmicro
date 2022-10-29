import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../entity/position_enitity.dart';

abstract class AttendanceRepository {
  Future<Either<Failure, PositionEntity>> doGetPosition(
    double longitude,
    double latitude,
    DateTime? timestamp,
    double accuracy,
    double altitude,
    double heading,
    double speed,
  );

  Future<Either<Failure, List<PositionEntity>>> doGetAllPositionHistory();
}
