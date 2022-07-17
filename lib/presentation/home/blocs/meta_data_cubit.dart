import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_start/presentation/home/blocs/states/states.dart';

const supportedPlatforms = [
  'android',
  'ios',
  'web',
  'linux',
  'macos',
  'windows',
];

const supportedAndroidLanguages = [
  'java',
  'kotlin',
];

const supportedIosLanguages = [
  'objc',
  'swift',
];

const defaultAndroidLanguage = 'kotlin';
const defaultIosLanguage = 'swift';

class MetaDataCubit extends Cubit<MetaDataState> {
  MetaDataCubit()
      : super(
          const MetaDataState(
            org: 'com.example',
            name: 'my_app',
            description: 'A new Flutter project',
            platforms: supportedPlatforms,
            androidLanguage: defaultAndroidLanguage,
            iosLanguage: defaultIosLanguage,
          ),
        );

  void checkPlatform(String s, bool value) {
    final platforms = state.platforms.toList();
    if (value) {
      platforms.add(s);
    } else {
      platforms.remove(s);
    }
    emit(state.copyWith(platforms: platforms));
  }

  void orgChanged(String value) {
    emit(state.copyWith(org: value));
  }

  void nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  void descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void androidLanguageChanged(String value) {
    emit(state.copyWith(androidLanguage: value));
  }

  void iosLanguageChanged(String value) {
    emit(state.copyWith(iosLanguage: value));
  }
}

extension MetaDataCubitExtension on BuildContext {
  MetaDataCubit get metaDataCubit => read<MetaDataCubit>();
}
