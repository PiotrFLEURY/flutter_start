import 'package:flutter_start/data/models/platform.dart';
import 'package:json_annotation/json_annotation.dart';

part 'platforms.g.dart';

@JsonSerializable()
class Platforms {
  Platform? android;
  Platform? ios;
  Platform? web;
  Platform? windows;
  Platform? macos;
  Platform? linux;

  Platforms({
    this.android,
    this.ios,
    this.web,
    this.windows,
    this.macos,
    this.linux,
  });

  factory Platforms.fromJson(Map<String, dynamic> json) =>
      _$PlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformsToJson(this);
}
