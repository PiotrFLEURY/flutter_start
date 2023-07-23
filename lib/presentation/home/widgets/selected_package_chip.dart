import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/presentation/home/notifiers/states/states.dart';
import 'package:flutter_start/providers.dart';

class SelectedPackageChip extends ConsumerWidget {
  final CheckedPackage checkedPackage;

  const SelectedPackageChip({
    super.key,
    required this.checkedPackage,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chip(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (checkedPackage.dev)
            Container(
              padding: const EdgeInsets.all(4.0),
              margin: const EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'dev',
              ),
            ),
          GestureDetector(
            onTap: () => ref
                .read(packageListNotifierProvider.notifier)
                .toggleDev(checkedPackage),
            onDoubleTap: () => _uncheckPackage(context, ref, checkedPackage),
            onLongPress: () => _uncheckPackage(context, ref, checkedPackage),
            child: Text(
              checkedPackage.packageName,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _uncheckPackage(
    BuildContext context,
    WidgetRef ref,
    CheckedPackage checkedPackage,
  ) {
    ref.read(packageListNotifierProvider.notifier).check(
          checkedPackage.packageName,
          packageChecked: false,
        );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Unchecked ${checkedPackage.packageName}'),
      ),
    );
  }
}
