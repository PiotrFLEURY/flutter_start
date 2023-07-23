import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/blocs.dart';
import 'package:flutter_start/presentation/home/blocs/states/states.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';

class MetaDataPanel extends StatelessWidget {
  const MetaDataPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MetaDataCubit(),
      child: BlocBuilder<MetaDataCubit, MetaDataState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Text('MetaData',
                        style: Theme.of(context).textTheme.headlineMedium),
                    MetaDataField(
                      label: 'org',
                      initialValue: state.org,
                      onChanged: (value) {
                        context.metaDataCubit.orgChanged(value);
                      },
                    ),
                    MetaDataField(
                      label: 'name',
                      initialValue: state.name,
                      onChanged: (value) {
                        context.metaDataCubit.nameChanged(value);
                      },
                    ),
                    MetaDataField(
                      label: 'description',
                      initialValue: state.description,
                      onChanged: (value) {
                        context.metaDataCubit.descriptionChanged(value);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Platforms',
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: supportedPlatforms.map(
                        (platform) {
                          return PlatformCheckbox(
                            label: platform,
                            value: state.platforms.contains(platform),
                            onChanged: (value) {
                              context.metaDataCubit
                                  .checkPlatform(platform, value);
                            },
                          );
                        },
                      ).toList(),
                    ),
                    if (state.platforms.contains('android'))
                      const AndroidLanguageSelector(),
                    if (state.platforms.contains('ios'))
                      const IosLanguageSelector(),
                  ],
                ),
              ),
              TerminalCommand(
                command: state.generateCommand(),
              ),
            ],
          );
        },
      ),
    );
  }
}
