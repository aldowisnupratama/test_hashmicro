import '../../models/position_models.dart';

abstract class PositionDatasources {
  Future<PositionModels> addPosition(
    double longitude,
    double latitude,
    DateTime? timestamp,
    double accuracy,
    double altitude,
    double heading,
    double speed,
  );

  Future<List<PositionModels>> getAllElement();
}
