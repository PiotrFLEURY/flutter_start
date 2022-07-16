import 'package:json_annotation/json_annotation.dart';

part 'package_completion.g.dart';

@JsonSerializable()
class PackageCompletion {
  List<String>? packages;
  PackageCompletion({this.packages});

  factory PackageCompletion.fromJson(Map<String, dynamic> json) =>
      _$PackageCompletionFromJson(json);
  Map<String, dynamic> toJson() => _$PackageCompletionToJson(this);
}
