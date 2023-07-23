import 'package:flutter_start/data/sources/remote/pub_api.dart';
import 'package:flutter_start/domain/entities/package_details.dart';
import 'package:flutter_start/domain/entities/package_list.dart';
import 'package:flutter_start/domain/repositories/package_repository.dart';
import 'package:flutter_start/presentation/home/blocs/meta_data_cubit.dart';

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

    final platformsModel = package.latest?.pubspec?.flutter?.plugin?.platforms;

    final platforms = platformsModel == null
        ? supportedPlatforms
        : [
            if (platformsModel.android != null) 'android',
            if (platformsModel.ios != null) 'ios',
            if (platformsModel.web != null) 'web',
            if (platformsModel.windows != null) 'windows',
            if (platformsModel.macos != null) 'macos',
            if (platformsModel.linux != null) 'linux',
          ];

    return PackageDetails(
      name: package.name ?? '',
      description: package.latest?.pubspec?.description ?? '',
      score: score.popularityScore ?? 0,
      version: package.latest?.version ?? '',
      likes: score.likeCount ?? 0,
      pubPoints: score.grantedPoints ?? 0,
      platforms: platforms,
    );
  }
}
