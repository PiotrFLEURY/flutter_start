// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platforms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Platforms _$PlatformsFromJson(Map<String, dynamic> json) => Platforms(
      android: json['android'] == null
          ? null
          : Platform.fromJson(json['android'] as Map<String, dynamic>),
      ios: json['ios'] == null
          ? null
          : Platform.fromJson(json['ios'] as Map<String, dynamic>),
      web: json['web'] == null
          ? null
          : Platform.fromJson(json['web'] as Map<String, dynamic>),
      windows: json['windows'] == null
          ? null
          : Platform.fromJson(json['windows'] as Map<String, dynamic>),
      macos: json['macos'] == null
          ? null
          : Platform.fromJson(json['macos'] as Map<String, dynamic>),
      linux: json['linux'] == null
          ? null
          : Platform.fromJson(json['linux'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlatformsToJson(Platforms instance) => <String, dynamic>{
      'android': instance.android,
      'ios': instance.ios,
      'web': instance.web,
      'windows': instance.windows,
      'macos': instance.macos,
      'linux': instance.linux,
    };
