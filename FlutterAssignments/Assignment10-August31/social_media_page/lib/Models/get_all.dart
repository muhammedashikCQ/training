// To parse this JSON data, do
//
//     final getAll = getAllFromJson(jsonString);

import 'dart:convert';

List<GetAll> getAllFromJson(String str) => List<GetAll>.from(json.decode(str).map((x) => GetAll.fromJson(x)));

String getAllToJson(List<GetAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAll {
    int? userId;
    int? id;
    String? title;
    String? body;
    int? commentsCount;

    GetAll({
        this.userId,
        this.id,
        this.title,
        this.body,
        this.commentsCount
    });

    factory GetAll.fromJson(Map<String, dynamic> json) => GetAll(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
