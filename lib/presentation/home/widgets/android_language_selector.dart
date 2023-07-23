import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/presentation/home/notifiers/notifiers.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';
import 'package:flutter_start/providers.dart';

class AndroidLanguageSelector extends ConsumerWidget {
  const AndroidLanguageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaData = ref.watch(metaDataNotifierProvider);
    return Column(
      children: [
        Text(
          'Android language',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: supportedAndroidLanguages.map(
              (language) {
                return LanguageSelector(
                  value: language,
                  group: metaData.androidLanguage,
                  onChanged: (value) {
                    ref
                        .read(metaDataNotifierProvider.notifier)
                        .androidLanguageChanged(value!);
                  },
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
