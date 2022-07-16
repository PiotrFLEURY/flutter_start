import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/details/details.dart';
import 'package:flutter_start/presentation/home/blocs/package_list_cubit.dart';
import 'package:flutter_start/presentation/home/blocs/states/package_list_state.dart';
import 'package:go_router/go_router.dart';

class PackageListView extends StatelessWidget {
  const PackageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackageListCubit, PackageListState>(
      builder: (context, state) => ListView.builder(
        itemCount: state.filteredPackages.length,
        itemBuilder: (context, index) {
          String packageName = state.filteredPackages[index];
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: InkWell(
              onTap: () =>
                  GoRouter.of(context).go(Details.packageRoute(packageName)),
              child: ListTile(
                title: Text(packageName),
                trailing: Checkbox(
                  value: state.checkedPackages
                      .map((e) => e.packageName)
                      .contains(packageName),
                  onChanged: (value) {
                    context.packageListCubit.check(
                      value,
                      packageName,
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
