import 'dart:developer';

import '../../../../../core/exception/cached_exception.dart';
import '../../../../../core/local_storage/position_hive_local_storage.dart';
import '../../models/position_models.dart';
import 'position_datasouces.dart';

class PositionDatasouresImpl extends PositionDatasources {
  final PositionHiveLocalStorage positionHiveLocalStorage;

  PositionDatasouresImpl({required this.positionHiveLocalStorage});
  @override
  Future<PositionModels> addPosition(
      double longitude,
      double latitude,
      DateTime? timestamp,
      double accuracy,
      double altitude,
      double heading,
      double speed) async {
    try {
      final result = await positionHiveLocalStorage.addPosition(
          longitude, latitude, timestamp, accuracy, altitude, heading, speed);
      return result;
    } on CachedException catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<PositionModels>> getAllElement() async {
    final result = await positionHiveLocalStorage.getAllPositions();
    log("============= result hehe: ${result.length}");
    return result;
  }
}
