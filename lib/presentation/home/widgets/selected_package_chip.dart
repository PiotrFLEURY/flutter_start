import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/home/blocs/blocs.dart';
import 'package:flutter_start/presentation/home/blocs/states/states.dart';

class SelectedPackageChip extends StatelessWidget {
  final CheckedPackage checkedPackage;

  const SelectedPackageChip({
    super.key,
    required this.checkedPackage,
  });

  @override
  Widget build(BuildContext context) {
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
            onTap: () => context.packageListCubit.toggleDev(checkedPackage),
            onDoubleTap: () => _uncheckPackage(context, checkedPackage),
            onLongPress: () => _uncheckPackage(context, checkedPackage),
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

  void _uncheckPackage(BuildContext context, CheckedPackage checkedPackage) {
    context.packageListCubit.check(
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
