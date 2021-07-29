import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../model/chat/join_room_request.dart';

class DialogRoomWidget extends HookWidget {
  const DialogRoomWidget({Key? key}) : super(key: key);

  static Future<JoinRoomRequest?> show(BuildContext context) async {
    return showDialog<JoinRoomRequest>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const DialogRoomWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userNameController = useTextEditingController();
    final roomNameController = useTextEditingController();
    return AlertDialog(
      title: const Text('Join room'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextFormFiled(userNameController, 'Name chat'),
          customTextFormFiled(roomNameController, 'Room chat'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            final JoinRoomRequest joinRoomRequest = JoinRoomRequest(
                room: 'JavaScript',
                // room: roomNameController.text,
                username: userNameController.text.isEmpty
                    ? 'Name Empty'
                    : userNameController.text);
            Navigator.of(context).pop(joinRoomRequest);
          },
          child: const Text('ok'),
        ),
      ],
    );
  }

  TextFormField customTextFormFiled(
      TextEditingController userNameController, String hintText) {
    return TextFormField(
      controller: userNameController,
      decoration: InputDecoration(labelText: hintText),
    );
  }
}
