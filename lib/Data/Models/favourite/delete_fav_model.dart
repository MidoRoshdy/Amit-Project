// To parse this JSON data, do
//
//     final deleteFavoriteResponseModel = deleteFavoriteResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:amit_project/Data/Models/favourite/datum.dart';

DeleteFavoriteResponseModel deleteFavoriteResponseModelFromJson(String str) =>
    DeleteFavoriteResponseModel.fromJson(json.decode(str));

String deleteFavoriteResponseModelToJson(DeleteFavoriteResponseModel data) =>
    json.encode(data.toJson());

class DeleteFavoriteResponseModel {
  bool status;
  Datum data;

  DeleteFavoriteResponseModel({
    required this.status,
    required this.data,
  });

  factory DeleteFavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      DeleteFavoriteResponseModel(
        status: json["status"],
        data: Datum.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
      };
}
