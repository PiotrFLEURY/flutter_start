// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Score _$ScoreFromJson(Map<String, dynamic> json) => Score(
      grantedPoints: json['grantedPoints'] as int?,
      maxPoints: json['maxPoints'] as int?,
      likeCount: json['likeCount'] as int?,
      popularityScore: (json['popularityScore'] as num?)?.toDouble(),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
      'likeCount': instance.likeCount,
      'popularityScore': instance.popularityScore,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };
