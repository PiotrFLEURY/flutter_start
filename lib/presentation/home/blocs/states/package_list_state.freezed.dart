// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PackageListState {
  String get filter => throw _privateConstructorUsedError;
  List<CheckedPackage> get checkedPackages =>
      throw _privateConstructorUsedError;
  PackageList get packageList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackageListStateCopyWith<PackageListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageListStateCopyWith<$Res> {
  factory $PackageListStateCopyWith(
          PackageListState value, $Res Function(PackageListState) then) =
      _$PackageListStateCopyWithImpl<$Res>;
  $Res call(
      {String filter,
      List<CheckedPackage> checkedPackages,
      PackageList packageList});
}

/// @nodoc
class _$PackageListStateCopyWithImpl<$Res>
    implements $PackageListStateCopyWith<$Res> {
  _$PackageListStateCopyWithImpl(this._value, this._then);

  final PackageListState _value;
  // ignore: unused_field
  final $Res Function(PackageListState) _then;

  @override
  $Res call({
    Object? filter = freezed,
    Object? checkedPackages = freezed,
    Object? packageList = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      checkedPackages: checkedPackages == freezed
          ? _value.checkedPackages
          : checkedPackages // ignore: cast_nullable_to_non_nullable
              as List<CheckedPackage>,
      packageList: packageList == freezed
          ? _value.packageList
          : packageList // ignore: cast_nullable_to_non_nullable
              as PackageList,
    ));
  }
}

/// @nodoc
abstract class _$$_PackageListStateCopyWith<$Res>
    implements $PackageListStateCopyWith<$Res> {
  factory _$$_PackageListStateCopyWith(
          _$_PackageListState value, $Res Function(_$_PackageListState) then) =
      __$$_PackageListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String filter,
      List<CheckedPackage> checkedPackages,
      PackageList packageList});
}

/// @nodoc
class __$$_PackageListStateCopyWithImpl<$Res>
    extends _$PackageListStateCopyWithImpl<$Res>
    implements _$$_PackageListStateCopyWith<$Res> {
  __$$_PackageListStateCopyWithImpl(
      _$_PackageListState _value, $Res Function(_$_PackageListState) _then)
      : super(_value, (v) => _then(v as _$_PackageListState));

  @override
  _$_PackageListState get _value => super._value as _$_PackageListState;

  @override
  $Res call({
    Object? filter = freezed,
    Object? checkedPackages = freezed,
    Object? packageList = freezed,
  }) {
    return _then(_$_PackageListState(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      checkedPackages: checkedPackages == freezed
          ? _value._checkedPackages
          : checkedPackages // ignore: cast_nullable_to_non_nullable
              as List<CheckedPackage>,
      packageList: packageList == freezed
          ? _value.packageList
          : packageList // ignore: cast_nullable_to_non_nullable
              as PackageList,
    ));
  }
}

/// @nodoc

class _$_PackageListState implements _PackageListState {
  const _$_PackageListState(
      {required this.filter,
      required final List<CheckedPackage> checkedPackages,
      required this.packageList})
      : _checkedPackages = checkedPackages;

  @override
  final String filter;
  final List<CheckedPackage> _checkedPackages;
  @override
  List<CheckedPackage> get checkedPackages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkedPackages);
  }

  @override
  final PackageList packageList;

  @override
  String toString() {
    return 'PackageListState(filter: $filter, checkedPackages: $checkedPackages, packageList: $packageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageListState &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality()
                .equals(other._checkedPackages, _checkedPackages) &&
            const DeepCollectionEquality()
                .equals(other.packageList, packageList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(_checkedPackages),
      const DeepCollectionEquality().hash(packageList));

  @JsonKey(ignore: true)
  @override
  _$$_PackageListStateCopyWith<_$_PackageListState> get copyWith =>
      __$$_PackageListStateCopyWithImpl<_$_PackageListState>(this, _$identity);
}

abstract class _PackageListState implements PackageListState {
  const factory _PackageListState(
      {required final String filter,
      required final List<CheckedPackage> checkedPackages,
      required final PackageList packageList}) = _$_PackageListState;

  @override
  String get filter;
  @override
  List<CheckedPackage> get checkedPackages;
  @override
  PackageList get packageList;
  @override
  @JsonKey(ignore: true)
  _$$_PackageListStateCopyWith<_$_PackageListState> get copyWith =>
      throw _privateConstructorUsedError;
}
