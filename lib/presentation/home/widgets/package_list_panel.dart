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
            const SelectedPackageList(),
            // List of packages.
            const Expanded(
              child: PackageListView(),
            ),
            BlocBuilder<PackageListCubit, PackageListState>(
              builder: (context, state) {
                if (state.nonDevCheckedPackages.isEmpty) {
                  return Container();
                }
                return TerminalCommand(
                    command:
                        'flutter pub add ${state.nonDevCheckedPackages.join(' ')}');
              },
            ),
            BlocBuilder<PackageListCubit, PackageListState>(
                builder: (context, state) {
              if (state.devCheckedPackages.isEmpty) {
                return Container();
              }
              return TerminalCommand(
                  command:
                      'flutter pub add --dev ${state.devCheckedPackages.join(' ')}');
            }),
          ],
        ),
      ),
    );
  }
}
