// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsState {
  PackageDetails? get packageDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
  $Res call({PackageDetails? packageDetails});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;

  @override
  $Res call({
    Object? packageDetails = freezed,
  }) {
    return _then(_value.copyWith(
      packageDetails: packageDetails == freezed
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as PackageDetails?,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailsStateCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$_DetailsStateCopyWith(
          _$_DetailsState value, $Res Function(_$_DetailsState) then) =
      __$$_DetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({PackageDetails? packageDetails});
}

/// @nodoc
class __$$_DetailsStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$$_DetailsStateCopyWith<$Res> {
  __$$_DetailsStateCopyWithImpl(
      _$_DetailsState _value, $Res Function(_$_DetailsState) _then)
      : super(_value, (v) => _then(v as _$_DetailsState));

  @override
  _$_DetailsState get _value => super._value as _$_DetailsState;

  @override
  $Res call({
    Object? packageDetails = freezed,
  }) {
    return _then(_$_DetailsState(
      packageDetails: packageDetails == freezed
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as PackageDetails?,
    ));
  }
}

/// @nodoc

class _$_DetailsState implements _DetailsState {
  const _$_DetailsState({required this.packageDetails});

  @override
  final PackageDetails? packageDetails;

  @override
  String toString() {
    return 'DetailsState(packageDetails: $packageDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsState &&
            const DeepCollectionEquality()
                .equals(other.packageDetails, packageDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(packageDetails));

  @JsonKey(ignore: true)
  @override
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      __$$_DetailsStateCopyWithImpl<_$_DetailsState>(this, _$identity);
}

abstract class _DetailsState implements DetailsState {
  const factory _DetailsState({required final PackageDetails? packageDetails}) =
      _$_DetailsState;

  @override
  PackageDetails? get packageDetails;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
