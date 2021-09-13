part of 'socket_bloc.dart';

@freezed
class SocketData with _$SocketData {
  const factory SocketData({
    @Default(false) bool isLoading,
  }) = DataSocket;
}

@freezed
class SocketState with _$SocketState {
  const factory SocketState.initial(SocketData data) = Initial;
}
