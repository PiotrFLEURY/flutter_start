import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/blocs.dart';
import 'package:flutter_start/presentation/home/blocs/states/states.dart';
import 'package:flutter_start/presentation/home/widgets/widgets.dart';

class AndroidLanguageSelector extends StatelessWidget {
  const AndroidLanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetaDataCubit, MetaDataState>(
      builder: (context, state) => Column(
        children: [
          Text('Android language',
              style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: supportedAndroidLanguages.map(
                (language) {
                  return LanguageSelector(
                    value: language,
                    group: state.androidLanguage,
                    onChanged: (value) {
                      context.metaDataCubit.androidLanguageChanged(value!);
                    },
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
