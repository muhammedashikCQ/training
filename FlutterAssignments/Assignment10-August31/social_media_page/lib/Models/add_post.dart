// To parse this JSON data, do
//
//     final addPost = addPostFromJson(jsonString);

import 'dart:convert';

AddPost addPostFromJson(String str) => AddPost.fromJson(json.decode(str));

String addPostToJson(AddPost data) => json.encode(data.toJson());

class AddPost {
    int? id;

    AddPost({
        this.id,
    });

    factory AddPost.fromJson(Map<String, dynamic> json) => AddPost(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}
