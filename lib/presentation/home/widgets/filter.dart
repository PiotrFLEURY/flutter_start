import 'package:flutter/material.dart';
import 'package:flutter_start/presentation/home/blocs/package_list_cubit.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => FilterState();
}

class FilterState extends State<Filter> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Package name',
        suffix: IconButton(
          onPressed: () {
            controller.clear();
            context.packageListCubit.filter('');
          },
          icon: const Icon(Icons.close),
        ),
      ),
      onChanged: (String value) => context.packageListCubit.filter(value),
    );
  }
}
