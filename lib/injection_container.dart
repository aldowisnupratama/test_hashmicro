import 'package:get_it/get_it.dart';

import 'core/local_storage/position_hive_local_storage.dart';
import 'core/service.dart/geolocator_service.dart';
import 'features/attendance/data/datasources/local_datasources/position_datasourcesimpl.dart';
import 'features/attendance/data/repository/attendance_repositoryimpl.dart';
import 'features/attendance/domain/usecases/do_get_all_position_history.dart';
import 'features/attendance/domain/usecases/do_get_position.dart';
import 'features/attendance/domain/usecases/do_get_user_position.dart';
import 'features/attendance/presentation/bloc/attendance_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => AttendanceBloc(
      doGetPositionUsecase: sl<DoGetPositionUsecase>(),
      doGetAllPositionUsecase: sl<DoGetAllPositionUsecase>(),
      doGetUserPosition: sl<DoGetUserPosition>()));
  sl.registerLazySingleton(
      () => DoGetUserPosition(geolocatorService: sl<GeolocatorService>()));
  sl.registerLazySingleton(() => DoGetAllPositionUsecase(
      attendanceRepository: sl<AttendanceRepositoryImpl>()));
  sl.registerLazySingleton(() => DoGetPositionUsecase(
        geolocatorService: sl<GeolocatorService>(),
        attendanceRepository: sl<AttendanceRepositoryImpl>(),
      ));

  sl.registerLazySingleton(() => AttendanceRepositoryImpl(
      positionDatasources: sl<PositionDatasouresImpl>()));
  sl.registerLazySingleton(() => GeolocatorService());
  sl.registerLazySingleton(() => PositionDatasouresImpl(
      positionHiveLocalStorage: sl<PositionHiveLocalStorage>()));
  sl.registerLazySingleton(() => PositionHiveLocalStorage());
}
