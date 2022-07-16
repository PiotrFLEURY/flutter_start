import 'package:flutter_start/domain/entities/package_list.dart';
import 'package:flutter_start/domain/repositories/package_repository.dart';

class GetPackageList {
  final PackageRepository _packageRepository;

  const GetPackageList(this._packageRepository);

  Future<PackageList> call() => _packageRepository.getPackages();
}
