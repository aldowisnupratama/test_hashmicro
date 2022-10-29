import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hm_test/core/failure/position_failure.dart';
import 'package:hm_test/features/attendance/domain/entity/position_enitity.dart';

class GeolocatorService {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  Future<Either<PositionFailure, Position>> getCurrentPosition() async {
    final hasPermission = await _handlePermission();

    if (!hasPermission) {
      return Left(PositionFailure());
    }

    try {
      final position = await _geolocatorPlatform.getCurrentPosition();
      return Right(position);
    } catch (e) {
      throw Left(PositionFailure());
    }
  }

  Future<double> getDistance(
      PositionEntity officePosition, PositionEntity userPosition) {
    double distanceInMeter = _geolocatorPlatform.distanceBetween(
        officePosition.latitude,
        officePosition.longitude,
        userPosition.latitude,
        userPosition.longitude);
    return Future.value(distanceInMeter);
  }
}
