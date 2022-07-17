import 'package:flutter_start/data/models/flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pubspec.g.dart';

@JsonSerializable()
class Pubspec {
  String? name;
  String? description;
  String? version;
  String? homepage;
  String? repository;
  Flutter? flutter;

  Pubspec({
    this.name,
    this.description,
    this.version,
    this.homepage,
    this.repository,
    this.flutter,
  });

  factory Pubspec.fromJson(Map<String, dynamic> json) =>
      _$PubspecFromJson(json);

  Map<String, dynamic> toJson() => _$PubspecToJson(this);
}
