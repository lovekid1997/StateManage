import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' as getpackage;
import 'package:rxdart/rxdart.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:state_manage/common/handle_common.dart';
import 'package:state_manage/features/socket_io/widgets/dialog_room_widget.dart';
import 'package:state_manage/model/chat/join_room_request.dart';
import 'package:state_manage/model/chat/message.dart';

part 'socket_event.dart';
part 'socket_state.dart';
part 'socket_bloc.freezed.dart';

const String keyJoinRoomAlert = 'join_room_alert';
const String keyJoinRoom = 'joinRoom';
const String keyMessage = 'message';
const String keyChatMessage = 'chatMessage';

class SocketBloc extends Bloc<SocketEvent, SocketState> with HandleCommon {
  SocketBloc() : super(const Initial(SocketData()));

  late io.Socket _socketIO;
  final BehaviorSubject<List<Message>> streamMessage =
      BehaviorSubject<List<Message>>.seeded([]);
  final List<Message> _listMessage = [];
  JoinRoomRequest? _information;

  String get getUserName => _information?.username ?? '';

  @override
  void onEvent(SocketEvent event) {
    ///third run
    log('event $event');
    super.onEvent(event);
  }

  @override
  Future<void> close() {
    _socketIO.dispose();
    streamMessage.close();
    return super.close();
  }

  @override
  Stream<Transition<SocketEvent, SocketState>> transformEvents(
      Stream<SocketEvent> events,
      TransitionFunction<SocketEvent, SocketState> transitionFn) {
    ///first run
    log('transformEvents');
    return super.transformEvents(events, transitionFn);
  }

  @override
  Stream<Transition<SocketEvent, SocketState>> transformTransitions(
      Stream<Transition<SocketEvent, SocketState>> transitions) {
    ///second run

    log('transformTransitions');
    return super.transformTransitions(transitions);
  }

  @override
  Stream<SocketState> mapEventToState(
    SocketEvent event,
  ) async* {
    if (event is Started) {
      _connectSocketIo();
    } else if (event is AddMessage) {
      _addMessage(event: event);
    } else {
      log('else');
    }
  }

  void _connectSocketIo() {
    _socketIO = io.io(
      'https://my-website-v.herokuapp.com',
      io.OptionBuilder()
          .disableAutoConnect()
          .enableReconnection()
          .setTransports(['websocket']).build(),
    );
    _socketIO.connect();

    _socketIO.onConnect((data) => log('onConnect: $data'));

    _socketIO.onConnectTimeout((data) => log('time out socket'));
    _joinRoom();
    _alertUserJoinRoom();
    _listenMessage();
  }

  void _alertUserJoinRoom() {
    _socketIO.on(keyJoinRoomAlert, (data) {
      _listMessage.insert(0, Message.fromJson(data));
      streamMessage.add(_listMessage);
    });
  }

  Future<void> _joinRoom() async {
    final context = getpackage.Get.context;
    if (context != null) {
      final JoinRoomRequest? joinRoomRequest =
          await DialogRoomWidget.show(context);
      if (joinRoomRequest != null) {
        _information = joinRoomRequest;
        _socketIO.emit(keyJoinRoom, joinRoomRequest.toJson());
      } else {
        log('cant get room request');
      }
    } else {
      log('get context error');
    }
  }

  void _listenMessage() {
    _socketIO.on(keyMessage, (data) {
      final Message parseData = Message.fromJson(data);
      parseData.isMyMessage =
          (parseData.username ?? '') == (_information?.username ?? '');
      _listMessage.insert(0, parseData);
      streamMessage.add(_listMessage);
    });
  }

  void _addMessage({required AddMessage event}) {
    // emit socket
    _socketIO.emit(keyChatMessage, event.message);
  }
}
