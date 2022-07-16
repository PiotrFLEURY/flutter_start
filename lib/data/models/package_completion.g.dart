// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageCompletion _$PackageCompletionFromJson(Map<String, dynamic> json) =>
    PackageCompletion(
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PackageCompletionToJson(PackageCompletion instance) =>
    <String, dynamic>{
      'packages': instance.packages,
    };
