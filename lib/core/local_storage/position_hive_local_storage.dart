import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/attendance/data/models/position_models.dart';

class PositionHiveLocalStorage {
  final _kPositionBoxName = 'position_box';

  PositionHiveLocalStorage() {
    // initDb();
  }

  Future<void> initDb() async {
    try {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      Hive.init(appDocumentDir.path);
      Hive.registerAdapter(PositionAdapter());
      await Hive.openBox<PositionModels>(_kPositionBoxName);
    } on Exception catch (e) {
      throw (Exception(e.toString()));
    }
  }

  Future<List<PositionModels>> getAllPositions() async {
    try {
      final positionBox = Hive.box<PositionModels>(_kPositionBoxName);
      List<PositionModels> listofPositions = positionBox.values.toList();
      return listofPositions;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<PositionModels> addPosition(
      double longitude,
      double latitude,
      DateTime? timestamp,
      double accuracy,
      double altitude,
      double heading,
      double speed) async {
    try {
      final position = PositionModels(
          longitude: longitude,
          latitude: latitude,
          accuracy: accuracy,
          altitude: altitude,
          heading: heading,
          speed: speed);
      final positionBox = Hive.box<PositionModels>(_kPositionBoxName);
      positionBox.add(position);
      return position;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
