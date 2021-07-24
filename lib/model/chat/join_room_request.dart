// To parse this JSON data, do
//
//     final joinRoomRequest = joinRoomRequestFromJson(jsonString);

import 'dart:convert';

class JoinRoomRequest {
  JoinRoomRequest({
    required this.username,
    required this.room,
  });

  late String username;
  late String room;

  factory JoinRoomRequest.fromRawJson(String str) =>
      JoinRoomRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JoinRoomRequest.fromJson(Map<String, dynamic> json) =>
      JoinRoomRequest(
        username: json["username"],
        room: json["room"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "room": room,
      };
}
