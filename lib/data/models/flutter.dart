import 'package:flutter_start/data/models/plugin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'flutter.g.dart';

@JsonSerializable()
class Flutter {
  final Plugin? plugin;

  Flutter({this.plugin});

  factory Flutter.fromJson(Map<String, dynamic> json) =>
      _$FlutterFromJson(json);

  Map<String, dynamic> toJson() => _$FlutterToJson(this);
}
