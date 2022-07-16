// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Latest _$LatestFromJson(Map<String, dynamic> json) => Latest(
      version: json['version'] as String?,
      pubspec: json['pubspec'] == null
          ? null
          : Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
      published: json['published'] == null
          ? null
          : DateTime.parse(json['published'] as String),
    );

Map<String, dynamic> _$LatestToJson(Latest instance) => <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'published': instance.published?.toIso8601String(),
    };
