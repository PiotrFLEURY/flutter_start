/// This is the datasource providing informations about pub.dev packages.
/// It uses the pub.dev API to get the informations.
///
/// See https://pub.dev/help/api for more informations.
///
/// Usage: GET https://pub.dev/api/package-name-completion-data
///

import 'package:flutter_start/data/models/models.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'pub_api.g.dart';

@RestApi(baseUrl: 'https://pub.dev/api/')
abstract class PubApi {
  factory PubApi(Dio dio, {String baseUrl}) = _PubApi;

  @GET('/package-name-completion-data')
  Future<PackageCompletion> getPackageCompletion();

  @GET('/packages/{packageName}')
  Future<Package> getPackage(@Path('packageName') String packageName);

  @GET('/packages/{packageName}/score')
  Future<Score> getScore(@Path('packageName') String packageName);
}
