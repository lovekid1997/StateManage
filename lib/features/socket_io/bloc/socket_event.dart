part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent {
  const factory SocketEvent.started() = Started;
  const factory SocketEvent.addMessage({required String message}) = AddMessage;
}
