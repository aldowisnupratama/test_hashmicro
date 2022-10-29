// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PositionAdapter extends TypeAdapter<PositionModels> {
  @override
  final int typeId = 1;

  @override
  PositionModels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PositionModels(
      longitude: fields[0] as double,
      latitude: fields[1] as double,
      timestamp: fields[2] as DateTime?,
      accuracy: fields[3] as double,
      altitude: fields[4] as double,
      heading: fields[5] as double,
      speed: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, PositionModels obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.longitude)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.timestamp)
      ..writeByte(3)
      ..write(obj.accuracy)
      ..writeByte(4)
      ..write(obj.altitude)
      ..writeByte(5)
      ..write(obj.heading)
      ..writeByte(6)
      ..write(obj.speed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
