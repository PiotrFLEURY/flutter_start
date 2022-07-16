import 'package:flutter_start/domain/entities/package_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.freezed.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required PackageDetails? packageDetails,
  }) = _DetailsState;
}
