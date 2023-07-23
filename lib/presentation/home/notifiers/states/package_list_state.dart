import 'package:flutter_start/domain/entities/package_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_list_state.freezed.dart';

class CheckedPackage {
  final String packageName;
  final bool dev;

  CheckedPackage({required this.packageName, required this.dev});
}

@freezed
class PackageListState with _$PackageListState {
  const factory PackageListState({
    required String filter,
    required List<CheckedPackage> checkedPackages,
    required PackageList packageList,
  }) = _PackageListState;
}

extension PackageListStateExtension on PackageListState {
  List<String> get packages => packageList.packages;

  List<String> get filteredPackages => packages
      .where((package) => package.toLowerCase().contains(filter.toLowerCase()))
      .toList()
    ..sort((a, b) => a.compareTo(b));

  List<String> get nonDevCheckedPackages => checkedPackages
      .where((checkedPackage) => !checkedPackage.dev)
      .map((checkedPackage) => checkedPackage.packageName)
      .toList();

  List<String> get devCheckedPackages => checkedPackages
      .where((checkedPackage) => checkedPackage.dev)
      .map((checkedPackage) => checkedPackage.packageName)
      .toList();
}
