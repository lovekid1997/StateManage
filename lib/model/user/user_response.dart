// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

import 'dart:convert';

class UserResponse {
  UserResponse({
    this.data,
  });

  List<DataUser>? data;

  factory UserResponse.fromRawJson(String str) =>
      UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        data: json["data"] == null
            ? null
            : List<DataUser>.from(
                json["data"].map((x) => DataUser.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class DataUser {
  DataUser({
    this.createdAt,
    this.firstName,
    this.avatar,
    this.job,
    this.lastName,
    this.id,
    this.like,
  });

  int? createdAt;
  String? firstName;
  String? avatar;
  String? job;
  String? lastName;
  String? id;
  bool? like;

  DataUser copyWith(
    int? createdAt,
    String? firstName,
    String? avatar,
    String? job,
    String? lastName,
    String? id,
    bool? like,
  ) =>
      DataUser(
        createdAt: createdAt ?? this.createdAt,
        firstName: firstName ?? this.firstName,
        avatar: avatar ?? this.avatar,
        job: job ?? this.job,
        lastName: lastName ?? this.lastName,
        id: id ?? this.id,
        like: like ?? this.like,
      );

  factory DataUser.fromRawJson(String str) =>
      DataUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
        createdAt: json["createdAt"],
        firstName: json["first_name"],
        avatar: json["avatar"],
        job: json["job"],
        lastName: json["last_name"],
        id: json["id"],
        like: json["like"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "first_name": firstName,
        "avatar": avatar,
        "job": job,
        "last_name": lastName,
        "id": id,
        "like": like,
      };
}
