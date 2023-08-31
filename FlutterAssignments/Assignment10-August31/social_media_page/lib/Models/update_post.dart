// To parse this JSON data, do
//
//     final updatePost = updatePostFromJson(jsonString);

import 'dart:convert';

UpdatePost updatePostFromJson(String str) => UpdatePost.fromJson(json.decode(str));

String updatePostToJson(UpdatePost data) => json.encode(data.toJson());

class UpdatePost {
    int? id;

    UpdatePost({
        this.id,
    });

    factory UpdatePost.fromJson(Map<String, dynamic> json) => UpdatePost(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}
