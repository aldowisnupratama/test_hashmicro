import 'package:hive/hive.dart';

import '../../domain/entity/position_enitity.dart';

part 'position_models.g.dart';

@HiveType(typeId: 1, adapterName: 'PositionAdapter')
class PositionModels extends PositionEntity {
  @HiveField(0)
  final double longitude;
  @HiveField(1)
  final double latitude;
  @HiveField(2)
  final DateTime? timestamp;
  @HiveField(3)
  final double accuracy;
  @HiveField(4)
  final double altitude;
  @HiveField(5)
  final double heading;
  @HiveField(6)
  final double speed;

  const PositionModels(
      {required this.longitude,
      required this.latitude,
      this.timestamp,
      required this.accuracy,
      required this.altitude,
      required this.heading,
      required this.speed})
      : super(latitude: latitude, longitude: longitude);
}
