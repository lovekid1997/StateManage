// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

class Message {
  Message({
    this.username,
    this.text,
    this.time,
    this.isMyMessage = false,
    this.isAlert,
  });

  String? username;
  String? text;
  String? time;
  bool isMyMessage;
  bool? isAlert;
  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        username: json["username"],
        text: json["text"],
        time: json["time"],
        isAlert: json["isAlert"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "text": text,
        "time": time,
        "isAlert": isAlert,
      };
}
