import 'package:flutter/material.dart';
import '../../../model/chat/message.dart';

class AlertUserWidget extends StatelessWidget {
  final Message item;

  const AlertUserWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.text ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          item.username ?? '',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          item.time ?? '',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
