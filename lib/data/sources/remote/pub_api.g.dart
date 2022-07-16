// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _PubApi implements PubApi {
  _PubApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://pub.dev/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PackageCompletion> getPackageCompletion() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PackageCompletion>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/package-name-completion-data',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PackageCompletion.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Package> getPackage(packageName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Package>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/packages/${packageName}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Package.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Score> getScore(packageName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Score>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/packages/${packageName}/score',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Score.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
