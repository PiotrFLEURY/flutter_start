import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/presentation/home/widgets/selected_package_chip.dart';
import 'package:flutter_start/providers.dart';

class SelectedPackageList extends ConsumerWidget {
  const SelectedPackageList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageList = ref.watch(packageListNotifierProvider);
    return Wrap(
      children: packageList.checkedPackages
          .map(
            (checkedPackage) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectedPackageChip(
                checkedPackage: checkedPackage,
              ),
            ),
          )
          .toList(),
    );
  }
}
