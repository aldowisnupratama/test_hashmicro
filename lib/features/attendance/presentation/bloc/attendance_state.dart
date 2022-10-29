part of 'attendance_bloc.dart';

class AttendanceState extends Equatable {
  final List<PositionEntity> positionEnitities;
  final PositionEntity checkInPositionEntity;
  final PositionEntity checkOutPositionEntity;
  final PositionEntity officePositionEntity;
  final String errorMessage;
  final bool isCheckInSucces;
  final bool isCheckOutSuccess;
  final bool tooFar;
  final bool onLoad;

  const AttendanceState(
      {required this.positionEnitities,
      required this.checkOutPositionEntity,
      required this.tooFar,
      required this.onLoad,
      required this.isCheckOutSuccess,
      required this.isCheckInSucces,
      required this.officePositionEntity,
      required this.checkInPositionEntity,
      required this.errorMessage});

  AttendanceState copyWith(
      {List<PositionEntity>? positionEnitities,
      String? errorMessage,
      bool? isCheckInSucces,
      bool? isCheckOutSuccess,
      bool? onLoad,
      bool? tooFar,
      PositionEntity? checkOutPositionEntity,
      PositionEntity? officePositionEntity,
      PositionEntity? checkInPositionEntity}) {
    return AttendanceState(
        tooFar: tooFar ?? this.tooFar,
        isCheckOutSuccess: isCheckOutSuccess ?? this.isCheckOutSuccess,
        checkOutPositionEntity:
            checkOutPositionEntity ?? this.checkOutPositionEntity,
        isCheckInSucces: isCheckInSucces ?? this.isCheckInSucces,
        officePositionEntity: officePositionEntity ?? this.officePositionEntity,
        errorMessage: errorMessage ?? this.errorMessage,
        positionEnitities: positionEnitities ?? this.positionEnitities,
        checkInPositionEntity:
            checkInPositionEntity ?? this.checkInPositionEntity,
        onLoad: onLoad ?? this.onLoad);
  }

  @override
  List<Object> get props => [
        positionEnitities,
        checkInPositionEntity,
        errorMessage,
        officePositionEntity,
        isCheckInSucces,
        isCheckOutSuccess,
        onLoad,
        tooFar
      ];
}

class AttendanceInitial extends AttendanceState {
  AttendanceInitial()
      : super(
            tooFar: false,
            onLoad: false,
            isCheckOutSuccess: false,
            checkOutPositionEntity: PositionEntity.empty(),
            isCheckInSucces: false,
            officePositionEntity: PositionEntity.empty(),
            errorMessage: "",
            positionEnitities: [],
            checkInPositionEntity: PositionEntity.empty());
}
