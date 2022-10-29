import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/position_enitity.dart';
import '../repository/attendance_repository.dart';

class DoGetAllPositionUsecase extends Usecase<List<PositionEntity>, NoParams> {
  final AttendanceRepository attendanceRepository;

  DoGetAllPositionUsecase({required this.attendanceRepository});
  @override
  Future<Either<Failure, List<PositionEntity>>> call(NoParams params) async {
    final result = await attendanceRepository.doGetAllPositionHistory();
    return result;
  }
}
