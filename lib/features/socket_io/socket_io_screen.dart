import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_manage/features/socket_io/bloc/socket_bloc.dart';
import 'package:state_manage/features/socket_io/widgets/alert_user_widget.dart';
import 'package:state_manage/features/socket_io/widgets/message_widget.dart';
import 'package:state_manage/features/socket_io/widgets/send_message_widget.dart';
import 'package:state_manage/model/chat/message.dart';

class SocketIoScreen extends HookWidget {
  const SocketIoScreen({Key? key}) : super(key: key);
  static BlocProvider<SocketBloc> init() {
    return BlocProvider(
      create: (_) => SocketBloc()..add(const Started()),
      lazy: false,
      child: const SocketIoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerMessage = useTextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Socket io example'),
        ),
        body: buildBody(context, controllerMessage: controllerMessage),
      ),
    );
  }

  Column buildBody(BuildContext context,
      {required TextEditingController controllerMessage}) {
    return Column(
      children: [
        Expanded(
          child: StreamBuilder(
            stream: context.read<SocketBloc>().streamMessage,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                final List<Message> listMessage = snapshot.data;
                return ListView.separated(
                  padding: const EdgeInsets.all(10),
                  reverse: true,
                  itemCount: listMessage.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    log('rebuild item $index');
                    final Message item = listMessage[index];
                    if (item.isAlert ?? false) {
                      return AlertUserWidget(item: item);
                    } else {
                      return MessageWidget(
                        item: item,
                        isMyMessage: item.isMyMessage,
                      );
                    }
                  },
                );
              } else if (snapshot.hasError) {
                log('stream error');
                return Text(snapshot.error.toString());
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                log('stream waitting');
                return const Text('stream waitting');
              } else {
                log('not data');
                return const Text('not data');
              }
            },
          ),
        ),
        SendMessageWidget(
          controller: controllerMessage,
          onSendMessage: () {
            context
                .read<SocketBloc>()
                .add(AddMessage(message: controllerMessage.text));
            controllerMessage.clear();
          },
        ),
      ],
    );
  }
}
