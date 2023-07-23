import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_start/presentation/home/notifiers/states/states.dart';

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

class MetaDataNotifier extends StateNotifier<MetaDataState> {
  MetaDataNotifier()
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

  void checkPlatform(String s, {bool platformChecked = false}) {
    final platforms = state.platforms.toList();
    if (platformChecked) {
      platforms.add(s);
    } else {
      platforms.remove(s);
    }
    state = state.copyWith(platforms: platforms);
  }

  void orgChanged(String value) {
    state = state.copyWith(org: value);
  }

  void nameChanged(String value) {
    state = state.copyWith(name: value);
  }

  void descriptionChanged(String value) {
    state = state.copyWith(description: value);
  }

  void androidLanguageChanged(String value) {
    state = state.copyWith(androidLanguage: value);
  }

  void iosLanguageChanged(String value) {
    state = state.copyWith(iosLanguage: value);
  }
}
