import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/package_list_cubit.dart';
import 'package:flutter_start/presentation/home/blocs/states/package_list_state.dart';

class SelectedPackageList extends StatelessWidget {
  const SelectedPackageList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackageListCubit, PackageListState>(
      builder: (context, state) => Wrap(
        children: state.checkedPackages
            .map((checkedPackage) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _SelectedPackageChip(
                    checkedPackage: checkedPackage,
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class _SelectedPackageChip extends StatelessWidget {
  final CheckedPackage checkedPackage;

  const _SelectedPackageChip({required this.checkedPackage});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.packageListCubit.toggleDev(checkedPackage),
      child: Chip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (checkedPackage.dev)
              Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'dev',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            Text(checkedPackage.packageName),
          ],
        ),
      ),
    );
  }
}
