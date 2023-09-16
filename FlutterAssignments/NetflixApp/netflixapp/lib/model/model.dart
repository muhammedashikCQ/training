import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Model({this.page, this.results, this.totalPages, this.totalResults});

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}
