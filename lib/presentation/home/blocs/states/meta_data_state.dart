import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_data_state.freezed.dart';

@freezed
class MetaDataState with _$MetaDataState {
  const factory MetaDataState({
    required String org,
    required String name,
    required String description,
    required List<String> platforms,
  }) = _MetaDataState;
}

extension MetaDataStateExtension on MetaDataState {
  String generateCommand() {
    // platforms
    final platformsArg =
        platforms.isEmpty ? '' : '--platforms=${platforms.join(',')}';
    // flutter create
    final String create =
        'flutter create --org=$org --description="$description" --template=app $platformsArg $name';
    return create;
  }
}
