import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/failure/position_failure.dart';
import '../../../../core/service/geolocator_service.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/position_enitity.dart';
import '../repository/attendance_repository.dart';

class DoGetPositionUsecase implements Usecase<PositionEntity, NoParams> {
  final GeolocatorService geolocatorService;
  final AttendanceRepository attendanceRepository;

  DoGetPositionUsecase(
      {required this.geolocatorService, required this.attendanceRepository});
  @override
  Future<Either<Failure, PositionEntity>> call(NoParams noParams) async {
    final position = await geolocatorService.getCurrentPosition();
    var result;
    position.fold((l) {
      return Left(PositionFailure());
    }, (r) async {
      result = attendanceRepository.doGetPosition(r.longitude, r.latitude,
          r.timestamp, r.accuracy, r.altitude, r.heading, r.speed);
    });
    return result;
  }
}
