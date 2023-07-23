import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/details/details.dart';
import 'package:flutter_start/presentation/home/blocs/blocs.dart';
import 'package:flutter_start/presentation/home/blocs/states/states.dart';
import 'package:go_router/go_router.dart';

class PackageListView extends StatelessWidget {
  const PackageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackageListCubit, PackageListState>(
      builder: (context, state) => ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${state.filteredPackages.length} packages',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ]
            .followedBy(
              state.filteredPackages
                  .map((package) => _buildItem(context, package, state)),
            )
            .toList(),
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    String packageName,
    PackageListState state,
  ) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () => GoRouter.of(context).go(Details.packageRoute(packageName)),
        child: ListTile(
          title: Text(packageName),
          trailing: Checkbox(
            value: state.checkedPackages
                .map((e) => e.packageName)
                .contains(packageName),
            onChanged: (value) {
              context.packageListCubit.check(
                packageName,
                packageChecked: value,
              );
            },
          ),
        ),
      ),
    );
  }
}
