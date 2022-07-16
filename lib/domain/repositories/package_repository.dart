import 'package:flutter_start/domain/entities/package_details.dart';
import 'package:flutter_start/domain/entities/package_list.dart';

abstract class PackageRepository {
  /// Get the list of packages available on pub.dev.
  Future<PackageList> getPackages();

  /// Get package details for a given package name.
  Future<PackageDetails> getDetails(String packageName);
}
