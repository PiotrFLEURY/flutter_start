import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/domain/entities/package_list.dart';
import 'package:flutter_start/domain/use_cases/get_package_list.dart';
import 'package:flutter_start/presentation/home/notifiers/states/package_list_state.dart';

class PackageListNotifier extends StateNotifier<PackageListState> {
  final GetPackageList getPackageList;
  static const emptyState = PackageListState(
    filter: '',
    checkedPackages: [],
    packageList: PackageList(packages: []),
  );

  PackageListNotifier(
    this.getPackageList,
  ) : super(emptyState) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    getPackageList().then(
      (value) {
        state = state.copyWith(packageList: value);
      },
    );
  }

  void filter(String query) {
    state = state.copyWith(filter: query);
  }

  void check(String packageName, {bool? packageChecked}) {
    final checked = packageChecked ?? false;
    if (checked) {
      state = state.copyWith(
        checkedPackages: [
          ...state.checkedPackages,
          CheckedPackage(packageName: packageName, dev: false),
        ],
      );
    } else {
      state = state.copyWith(
        checkedPackages: state.checkedPackages
            .where(
              (checkedPackage) => checkedPackage.packageName != packageName,
            )
            .toList(),
      );
    }
  }

  void toggleDev(CheckedPackage checkedPackage) {
    state = state.copyWith(
      checkedPackages: [
        ...state.checkedPackages
            .where((e) => e.packageName != checkedPackage.packageName),
        CheckedPackage(
          packageName: checkedPackage.packageName,
          dev: !checkedPackage.dev,
        ),
      ],
    );
  }
}
