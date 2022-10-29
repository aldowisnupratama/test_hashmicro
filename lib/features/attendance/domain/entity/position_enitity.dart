import 'package:equatable/equatable.dart';

class PositionEntity extends Equatable {
  final double longitude;
  final double latitude;

  const PositionEntity({required this.longitude, required this.latitude});

  PositionEntity copyWith({double? longitude, double? latitude}) {
    return PositionEntity(
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude);
  }

  PositionEntity.empty() : this(latitude: 0, longitude: 0);
  @override
  List<Object?> get props => [longitude, latitude];
}
