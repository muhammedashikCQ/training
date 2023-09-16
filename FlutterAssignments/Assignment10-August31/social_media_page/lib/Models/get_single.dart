// To parse this JSON data, do
//
//     final getSingle = getSingleFromJson(jsonString);

import 'dart:convert';

GetSingle getSingleFromJson(String str) => GetSingle.fromJson(json.decode(str));

String getSingleToJson(GetSingle data) => json.encode(data.toJson());

class GetSingle {
    int? userId;
    int? id;
    String? title;
    String? body;

    GetSingle({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory GetSingle.fromJson(Map<String, dynamic> json) => GetSingle(
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
