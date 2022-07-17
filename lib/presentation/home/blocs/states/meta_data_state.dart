import 'package:flutter_start/domain/entities/command.dart';
import 'package:flutter_start/presentation/home/blocs/blocs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_data_state.freezed.dart';

@freezed
class MetaDataState with _$MetaDataState {
  const factory MetaDataState({
    required String org,
    required String name,
    required String description,
    required List<String> platforms,
    required String androidLanguage,
    required String iosLanguage,
  }) = _MetaDataState;
}

extension MetaDataStateExtension on MetaDataState {
  String generateCommand() {
    return Command.flutterCreate({
      'org': org,
      'name': name,
      'description': description,
      if (platforms.isNotEmpty) 'platforms': platforms.join(','),
      if (platforms.contains('android') &&
          androidLanguage != defaultAndroidLanguage)
        'android-language': androidLanguage,
      if (platforms.contains('ios') && iosLanguage != defaultIosLanguage)
        'ios-language': iosLanguage,
    }).toString();
  }
}
