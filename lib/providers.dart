import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/data/repositories/package_repository.dart';
import 'package:flutter_start/data/sources/remote/pub_api.dart';
import 'package:flutter_start/domain/use_cases/get_package_details.dart';
import 'package:flutter_start/domain/use_cases/get_package_list.dart';
import 'package:flutter_start/presentation/details/notifiers/details_notifier.dart';
import 'package:flutter_start/presentation/details/notifiers/states/details_state.dart';
import 'package:flutter_start/presentation/home/notifiers/notifiers.dart';
import 'package:flutter_start/presentation/home/notifiers/states/states.dart';

// Dio
final dioProvider = Provider((ref) => Dio());

// PubApi
final pubApiProvider = Provider((ref) => PubApi(ref.read(dioProvider)));

// PackageRepository
final packageRepositoryProvider = Provider(
  (ref) => PackageRepositoryImpl(
    ref.read(pubApiProvider),
  ),
);

// UseCases

// GetPackageList
final getPackageListProvider = Provider(
  (ref) => GetPackageList(
    ref.read(packageRepositoryProvider),
  ),
);

// GetPackageDetails
final getPackageDestailsProvider = Provider(
  (ref) => GetPackageDetails(
    ref.read(packageRepositoryProvider),
  ),
);

// Notifiers

// MetaDataNotifier
final metaDataNotifierProvider =
    StateNotifierProvider<MetaDataNotifier, MetaDataState>(
  (ref) => MetaDataNotifier(),
);

// PackageListNotifier
final packageListNotifierProvider =
    StateNotifierProvider<PackageListNotifier, PackageListState>(
  (ref) => PackageListNotifier(
    ref.read(getPackageListProvider),
  ),
);

// DetailsNotifier
final detailsNotifierProvider = StateNotifierProvider.autoDispose
    .family<DetailsNotifier, DetailsState, String>(
  (ref, packageName) => DetailsNotifier(
    packageName: packageName,
    getPackageDetails: ref.read(getPackageDestailsProvider),
  ),
);
