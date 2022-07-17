import 'package:flutter_start/data/models/platforms.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plugin.g.dart';

@JsonSerializable()
class Plugin {
  Platforms? platforms;

  Plugin({this.platforms});

  factory Plugin.fromJson(Map<String, dynamic> json) => _$PluginFromJson(json);

  Map<String, dynamic> toJson() => _$PluginToJson(this);
}
