import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/presentation/home/notifiers/notifiers.dart';
import 'package:flutter_start/presentation/home/notifiers/states/states.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';
import 'package:flutter_start/providers.dart';

class MetaDataPanel extends ConsumerWidget {
  const MetaDataPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metaData = ref.watch(metaDataNotifierProvider);
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Text(
                'MetaData',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              MetaDataField(
                label: 'org',
                initialValue: metaData.org,
                onChanged: (value) {
                  ref.read(metaDataNotifierProvider.notifier).orgChanged(value);
                },
              ),
              MetaDataField(
                label: 'name',
                initialValue: metaData.name,
                onChanged: (value) {
                  ref
                      .read(metaDataNotifierProvider.notifier)
                      .nameChanged(value);
                },
              ),
              MetaDataField(
                label: 'description',
                initialValue: metaData.description,
                onChanged: (value) {
                  ref
                      .read(metaDataNotifierProvider.notifier)
                      .descriptionChanged(value);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Platforms',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: supportedPlatforms.map(
                  (platform) {
                    return PlatformCheckbox(
                      label: platform,
                      value: metaData.platforms.contains(platform),
                      onChanged: (value) {
                        ref
                            .read(metaDataNotifierProvider.notifier)
                            .checkPlatform(
                              platform,
                              platformChecked: value,
                            );
                      },
                    );
                  },
                ).toList(),
              ),
              if (metaData.platforms.contains('android'))
                const AndroidLanguageSelector(),
              if (metaData.platforms.contains('ios'))
                const IosLanguageSelector(),
            ],
          ),
        ),
        TerminalCommand(
          command: metaData.generateCommand(),
        ),
      ],
    );
  }
}
