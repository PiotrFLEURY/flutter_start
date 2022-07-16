import 'package:flutter_start/data/sources/remote/pub_api.dart';
import 'package:flutter_start/domain/entities/package_details.dart';
import 'package:flutter_start/domain/entities/package_list.dart';
import 'package:flutter_start/domain/repositories/package_repository.dart';

class PackageRepositoryImpl extends PackageRepository {
  final PubApi _pubApi;

  PackageRepositoryImpl(this._pubApi);

  @override
  Future<PackageList> getPackages() {
    return _pubApi.getPackageCompletion().then((value) {
      return PackageList(packages: value.packages ?? []);
    });
  }

  @override
  Future<PackageDetails> getDetails(String packageName) async {
    final package = await _pubApi.getPackage(packageName);
    final score = await _pubApi.getScore(packageName);

    return PackageDetails(
      name: package.name ?? '',
      description: package.latest?.pubspec?.description ?? '',
      score: score.popularityScore ?? 0,
      version: package.latest?.version ?? '',
      likes: score.likeCount ?? 0,
      pubPoints: score.grantedPoints ?? 0,
    );
  }
}
