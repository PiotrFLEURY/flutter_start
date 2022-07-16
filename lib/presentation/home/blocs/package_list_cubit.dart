import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/domain/entities/package_list.dart';
import 'package:flutter_start/domain/use_cases/get_package_list.dart';
import 'package:flutter_start/injection.dart';
import 'package:flutter_start/presentation/home/blocs/states/package_list_state.dart';

class PackageListCubit extends Cubit<PackageListState> {
  final GetPackageList getPackageList = getIt();
  static const emptyState = PackageListState(
    filter: '',
    checkedPackages: [],
    packageList: PackageList(packages: []),
  );

  PackageListCubit() : super(emptyState) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    getPackageList().then(
      (value) => emit(
        state.copyWith(packageList: value),
      ),
    );
  }

  void filter(String query) {
    emit(state.copyWith(filter: query));
  }

  void check(bool? value, String packageName) {
    final checked = value ?? false;
    if (checked) {
      emit(state.copyWith(checkedPackages: [
        ...state.checkedPackages,
        CheckedPackage(packageName: packageName, dev: false)
      ]));
    } else {
      emit(
        state.copyWith(
          checkedPackages: state.checkedPackages
              .where(
                  (checkedPackage) => checkedPackage.packageName != packageName)
              .toList(),
        ),
      );
    }
  }

  toggleDev(CheckedPackage checkedPackage) {
    emit(state.copyWith(
      checkedPackages: [
        ...state.checkedPackages
            .where((e) => e.packageName != checkedPackage.packageName),
        CheckedPackage(
          packageName: checkedPackage.packageName,
          dev: !checkedPackage.dev,
        ),
      ],
    ));
  }
}

extension PackageListCubitExtension on BuildContext {
  PackageListCubit get packageListCubit => read<PackageListCubit>();
}
