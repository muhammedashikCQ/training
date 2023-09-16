
import 'dart:convert';

List<Sampledata> sampledataFromJson(String str) => List<Sampledata>.from(json.decode(str).map((x) => Sampledata.fromJson(x)));

String sampledataToJson(List<Sampledata> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sampledata {
    int? id;
    String? name;
    String? type;
    bool? available;

    Sampledata({
        this.id,
        this.name,
        this.type,
        this.available,
    });

    factory Sampledata.fromJson(Map<String, dynamic> json) => Sampledata(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        available: json["available"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "available": available,
    };
}
