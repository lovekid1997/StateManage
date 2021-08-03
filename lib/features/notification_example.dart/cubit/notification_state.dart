part of 'notification_cubit.dart';

@freezed
class NotificationStateData with _$NotificationStateData {
  const factory NotificationStateData({@Default(false) bool isLoading}) =
      DataNotification;
}

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial(DataNotification data) = Initial;
  const factory NotificationState.loaded(DataNotification data) = Loaded;
  const factory NotificationState.loading(DataNotification data) = Loading;
  const factory NotificationState.error(DataNotification data) = Error;
}
