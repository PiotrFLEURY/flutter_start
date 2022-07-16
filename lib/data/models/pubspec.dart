import 'package:json_annotation/json_annotation.dart';

part 'pubspec.g.dart';

@JsonSerializable()
class Pubspec {
  String? name;
  String? description;
  String? version;
  String? homepage;
  String? repository;

  Pubspec({
    this.name,
    this.description,
    this.version,
    this.homepage,
    this.repository,
  });

  factory Pubspec.fromJson(Map<String, dynamic> json) =>
      _$PubspecFromJson(json);

  Map<String, dynamic> toJson() => _$PubspecToJson(this);
}
