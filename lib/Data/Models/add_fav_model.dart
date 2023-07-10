import 'dart:convert';

AddFavModel addFavModelFromJson(String str) =>
    AddFavModel.fromJson(json.decode(str));

String addFavModelToJson(AddFavModel data) => json.encode(data.toJson());

class AddFavModel {
  bool status;
  Data data;

  AddFavModel({
    required this.status,
    required this.data,
  });

  factory AddFavModel.fromJson(Map<String, dynamic> json) => AddFavModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
      };
}

class Data {
  String userId;
  String jobId;
  bool like;
  String image;
  String name;
  String location;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  Data({
    required this.userId,
    required this.jobId,
    required this.like,
    required this.image,
    required this.name,
    required this.location,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        jobId: json["job_id"],
        like: json["like"],
        image: json["image"],
        name: json["name"],
        location: json["location"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "job_id": jobId,
        "like": like,
        "image": image,
        "name": name,
        "location": location,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
