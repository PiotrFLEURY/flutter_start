import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/providers.dart';

class Filter extends ConsumerStatefulWidget {
  const Filter({super.key});

  @override
  ConsumerState<Filter> createState() => FilterState();
}

class FilterState extends ConsumerState<Filter> {
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
            ref.read(packageListNotifierProvider.notifier).filter('');
          },
          icon: const Icon(Icons.close),
        ),
      ),
      onChanged: (value) =>
          ref.read(packageListNotifierProvider.notifier).filter(value),
    );
  }
}
