part of 'attendance_bloc.dart';

abstract class AttendanceEvent extends Equatable {
  const AttendanceEvent();

  @override
  List<Object> get props => [];
}

class DoGetPosition extends AttendanceEvent {}

class DoGetAllPosition extends AttendanceEvent {}

class UserCheckIn extends AttendanceEvent {}

class UserCheckOut extends AttendanceEvent {}
