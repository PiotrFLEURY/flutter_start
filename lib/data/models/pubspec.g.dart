// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pubspec _$PubspecFromJson(Map<String, dynamic> json) => Pubspec(
      name: json['name'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      homepage: json['homepage'] as String?,
      repository: json['repository'] as String?,
      flutter: json['flutter'] == null
          ? null
          : Flutter.fromJson(json['flutter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PubspecToJson(Pubspec instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'homepage': instance.homepage,
      'repository': instance.repository,
      'flutter': instance.flutter,
    };
