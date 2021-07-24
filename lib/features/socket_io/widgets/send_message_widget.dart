import 'package:flutter/material.dart';

class SendMessageWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function onSendMessage;

  const SendMessageWidget(
      {Key? key, required this.controller, required this.onSendMessage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Enter message',
              ),
            ),
          ),
          IconButton(
            onPressed: () => onSendMessage(),
            icon: const Icon(
              Icons.send,
            ),
          ),
        ],
      ),
    );
  }
}
