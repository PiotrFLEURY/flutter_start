import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/domain/entities/command.dart';
import 'package:flutter_start/presentation/home/notifiers/states/states.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';
import 'package:flutter_start/providers.dart';

class PackageListPanel extends ConsumerWidget {
  const PackageListPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageList = ref.watch(packageListNotifierProvider);
    return Builder(
      builder: (context) => Column(
        children: [
          Text(
            'Dependencies',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          // Text field to enter the package name.
          const Filter(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Click on any selected package to mark it as dev',
              style: TextStyle(fontSize: 12),
            ),
          ),
          const SelectedPackageList(),
          // List of packages.
          const Expanded(
            child: PackageListView(),
          ),
          Builder(
            builder: (context) {
              final checkedPackagesCommand =
                  Command.flutterPubAdd(packageList.nonDevCheckedPackages);
              final devCheckPackagesCommand = Command.flutterPubAdd(
                packageList.devCheckedPackages,
                dev: true,
              );
              if (checkedPackagesCommand.hasNoArguments &&
                  devCheckPackagesCommand.hasNoArguments) {
                return Container();
              }
              return TerminalCommand(
                command: [checkedPackagesCommand, devCheckPackagesCommand]
                    .where((e) => e.hasArguments)
                    .join(' && '),
              );
            },
          ),
        ],
      ),
    );
  }
}
