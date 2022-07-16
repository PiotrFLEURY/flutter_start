import 'package:dio/dio.dart';
import 'package:flutter_start/data/repositories/package_repository.dart';
import 'package:flutter_start/data/sources/remote/pub_api.dart';
import 'package:flutter_start/domain/repositories/package_repository.dart';
import 'package:flutter_start/domain/use_cases/get_package_details.dart';
import 'package:flutter_start/domain/use_cases/get_package_list.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void prepareContext() {
  // Dio
  getIt.registerFactory<Dio>(() => Dio());

  // PubApi
  getIt.registerLazySingleton<PubApi>(() => PubApi(getIt<Dio>()));

  // PackageRepository
  getIt.registerLazySingleton<PackageRepository>(
    () => PackageRepositoryImpl(getIt<PubApi>()),
  );

  // UseCases

  // GetPackageList
  getIt.registerLazySingleton<GetPackageList>(
    () => GetPackageList(getIt<PackageRepository>()),
  );

  // GetPackageDetails
  getIt.registerLazySingleton<GetPackageDetails>(
    () => GetPackageDetails(getIt<PackageRepository>()),
  );
}
