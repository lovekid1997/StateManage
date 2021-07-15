// To parse this JSON data, do
//
//     final pagtination = pagtinationFromJson(jsonString);

import 'dart:convert';

class PagtinationModel {
  PagtinationModel({
    this.limit,
    this.page,
  });

  int? limit;
  int? page;

  factory PagtinationModel.fromRawJson(String str) =>
      PagtinationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PagtinationModel.fromJson(Map<String, dynamic> json) =>
      PagtinationModel(
        limit: json["limit"],
        page: json["page"],
      );

  Map<String, dynamic> toJson() {
    return {
      "limit": limit,
      "page": page,
    };
  }
}
