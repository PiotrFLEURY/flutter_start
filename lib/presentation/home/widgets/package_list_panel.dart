import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/blocs.dart';
import 'package:flutter_start/presentation/home/blocs/states/states.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';

class PackageListPanel extends StatelessWidget {
  const PackageListPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PackageListCubit(),
      child: Builder(
        builder: (context) => Column(
          children: [
            Text('Dependencies', style: Theme.of(context).textTheme.headline4),
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
            BlocBuilder<PackageListCubit, PackageListState>(
              builder: (context, state) {
                final checkedPackagesCommand = state
                        .nonDevCheckedPackages.isEmpty
                    ? ''
                    : 'flutter pub add ${state.nonDevCheckedPackages.join(' ')}';
                final devCheckPackagesCommand = state.devCheckedPackages.isEmpty
                    ? ''
                    : 'flutter pub add --dev ${state.devCheckedPackages.join(' ')}';
                if (checkedPackagesCommand.isEmpty &&
                    devCheckPackagesCommand.isEmpty) {
                  return Container();
                }
                return TerminalCommand(
                  command: [checkedPackagesCommand, devCheckPackagesCommand]
                      .where((e) => e.isNotEmpty)
                      .join(' && '),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
