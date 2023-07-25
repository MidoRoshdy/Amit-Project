// To parse this JSON data, do
//
//     final getEducationResponseModel = getEducationResponseModelFromJson(jsonString);

import 'dart:convert';

GetEducationResponseModel getEducationResponseModelFromJson(String str) =>
    GetEducationResponseModel.fromJson(json.decode(str));

String getEducationResponseModelToJson(GetEducationResponseModel data) =>
    json.encode(data.toJson());

class GetEducationResponseModel {
  bool status;
  List<Datume> data;

  GetEducationResponseModel({
    required this.status,
    required this.data,
  });

  factory GetEducationResponseModel.fromJson(Map<String, dynamic> json) =>
      GetEducationResponseModel(
        status: json["status"],
        data: List<Datume>.from(json["data"].map((x) => Datume.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datume {
  int id;
  String universty;
  String title;
  String start;
  String end;
  int userId;
  String profileId;
  DateTime createdAt;
  DateTime updatedAt;

  Datume({
    required this.id,
    required this.universty,
    required this.title,
    required this.start,
    required this.end,
    required this.userId,
    required this.profileId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datume.fromJson(Map<String, dynamic> json) => Datume(
        id: json["id"],
        universty: json["universty"],
        title: json["title"],
        start: json["start"],
        end: json["end"],
        userId: json["user_id"],
        profileId: json["profile_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "universty": universty,
        "title": title,
        "start": start,
        "end": end,
        "user_id": userId,
        "profile_id": profileId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
