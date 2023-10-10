// ignore_for_file: must_be_immutable

part of 'notification_one_bloc.dart';

/// Represents the state of NotificationOne in the application.
class NotificationOneState extends Equatable {
  NotificationOneState({this.notificationOneModelObj});

  NotificationOneModel? notificationOneModelObj;

  @override
  List<Object?> get props => [
        notificationOneModelObj,
      ];
  NotificationOneState copyWith(
      {NotificationOneModel? notificationOneModelObj}) {
    return NotificationOneState(
      notificationOneModelObj:
          notificationOneModelObj ?? this.notificationOneModelObj,
    );
  }
}
