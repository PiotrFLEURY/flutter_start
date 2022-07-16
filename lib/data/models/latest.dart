import 'package:flutter_start/data/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'latest.g.dart';

@JsonSerializable()
class Latest {
  String? version;
  Pubspec? pubspec;
  DateTime? published;

  Latest({this.version, this.pubspec, this.published});

  factory Latest.fromJson(Map<String, dynamic> json) => _$LatestFromJson(json);

  Map<String, dynamic> toJson() => _$LatestToJson(this);
}
