// To parse this JSON data, do
//
//     final sampleData1 = sampleData1FromJson(jsonString);

import 'dart:convert';

SampleData1 sampleData1FromJson(String str) => SampleData1.fromJson(json.decode(str));

String sampleData1ToJson(SampleData1 data) => json.encode(data.toJson());

class SampleData1 {
    int? id;
    String? name;
    String? author;
    String? type;
    double? price;
    int? currentStock;
    bool? available;

    SampleData1({
        this.id,
        this.name,
        this.author,
        this.type,
        this.price,
        this.currentStock,
        this.available,
    });

    factory SampleData1.fromJson(Map<String, dynamic> json) => SampleData1(
        id: json["id"],
        name: json["name"],
        author: json["author"],
        type: json["type"],
        price: json["price"].toDouble(),
        currentStock: json["current-stock"],
        available: json["available"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "author": author,
        "type": type,
        "price": price,
        "current-stock": currentStock,
        "available": available,
    };
}
