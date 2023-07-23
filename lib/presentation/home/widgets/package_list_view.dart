import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/presentation/details/details.dart';
import 'package:flutter_start/presentation/home/notifiers/states/states.dart';
import 'package:flutter_start/providers.dart';
import 'package:go_router/go_router.dart';

class PackageListView extends ConsumerWidget {
  const PackageListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageList = ref.watch(packageListNotifierProvider);
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${packageList.filteredPackages.length} packages',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ]
          .followedBy(
            packageList.filteredPackages.map(
              (package) => _buildItem(
                context,
                ref,
                package,
                packageList,
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildItem(
    BuildContext context,
    WidgetRef ref,
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
              ref.read(packageListNotifierProvider.notifier).check(
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
