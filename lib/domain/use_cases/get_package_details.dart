import 'package:flutter_start/domain/entities/package_details.dart';
import 'package:flutter_start/domain/repositories/package_repository.dart';

class GetPackageDetails {
  final PackageRepository repository;

  GetPackageDetails(this.repository);

  Future<PackageDetails> call(String packageName) async {
    return repository.getDetails(packageName);
  }
}
