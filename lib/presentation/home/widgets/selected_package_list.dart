import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/package_list_cubit.dart';
import 'package:flutter_start/presentation/home/blocs/states/package_list_state.dart';
import 'package:flutter_start/presentation/home/widgets/selected_package_chip.dart';

class SelectedPackageList extends StatelessWidget {
  const SelectedPackageList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackageListCubit, PackageListState>(
      builder: (context, state) => Wrap(
        children: state.checkedPackages
            .map((checkedPackage) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SelectedPackageChip(
                    checkedPackage: checkedPackage,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
