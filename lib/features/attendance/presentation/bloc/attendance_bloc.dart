import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/failure/position_failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/position_enitity.dart';
import '../../domain/usecases/do_get_all_position_history.dart';
import '../../domain/usecases/do_get_position.dart';
import '../../domain/usecases/do_get_user_position.dart';

part 'attendance_event.dart';
part 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final DoGetPositionUsecase doGetPositionUsecase;
  final DoGetAllPositionUsecase doGetAllPositionUsecase;
  final DoGetUserPosition doGetUserPosition;
  AttendanceBloc(
      {required this.doGetPositionUsecase,
      required this.doGetUserPosition,
      required this.doGetAllPositionUsecase})
      : super(AttendanceInitial()) {
    on<AttendanceEvent>((event, emit) async {
      if (event is DoGetPosition) {
        await doGetPosition(event, emit);
      }
      if (event is DoGetAllPosition) {
        await doGetAllPosition(event, emit);
      }
      if (event is UserCheckIn) {
        await userCheckIn(event, emit);
      }
      if (event is UserCheckOut) {
        await userCheckOut(event, emit);
      }
    });
  }

  Future<void> doGetPosition(DoGetPosition event, emit) async {
    final result = await doGetPositionUsecase(NoParams());
    await result.fold((l) async {
      if (l is PositionFailure) {
        emit(
            state.copyWith(errorMessage: "Please enable the permission first"));
      }
    }, (r) async {
      emit(state.copyWith(
          officePositionEntity:
              PositionEntity(longitude: r.longitude, latitude: r.latitude)));
    });
  }

  Future<void> doGetAllPosition(DoGetAllPosition event, emit) async {
    emit(state.copyWith(onLoad: true));
    final result = await doGetAllPositionUsecase(NoParams());
    await result.fold(
        (l) => emit(state.copyWith(positionEnitities: [], onLoad: false)),
        (r) => emit(state.copyWith(positionEnitities: r, onLoad: false)));
  }

  Future<void> userCheckIn(UserCheckIn event, emit) async {
    final officePosition = state.officePositionEntity;
    log("========= office position ${officePosition.latitude}");
    final userPosition = await doGetUserPosition(NoParams());

    await userPosition.fold((l) {
      log("================== failed");
      emit(state.copyWith(tooFar: true));
    }, (r) async {
      log("============ user :longitude ${r.longitude}, latitude ${r.latitude}");
      final distance = await doGetUserPosition.getDistance(officePosition, r);
      log("=============== distance: $distance");

      if (distance <= 50) {
        log("==================== distance is true");
        emit(state.copyWith(
            checkInPositionEntity: r, isCheckInSucces: true, tooFar: false));
      }
    });
  }

  Future<void> userCheckOut(
      UserCheckOut event, Emitter<AttendanceState> emit) async {
    final officePosition = state.officePositionEntity;
    log("========= office position ${officePosition.latitude}");
    final userPosition = await doGetUserPosition(NoParams());

    await userPosition.fold((l) {
      log("================== failed");
      emit(state.copyWith(tooFar: true));
    }, (r) async {
      log("============ user :longitude ${r.longitude}, latitude ${r.latitude}");
      final distance = await doGetUserPosition.getDistance(officePosition, r);
      log("=============== distance: $distance");

      if (distance <= 50) {
        log("==================== distance is true");
        emit(state.copyWith(
            checkOutPositionEntity: r, isCheckOutSuccess: true, tooFar: false));
      }
    });
  }
}
