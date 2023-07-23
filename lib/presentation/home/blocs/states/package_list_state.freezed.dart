// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PackageListStateCopyWithImpl<$Res, PackageListState>;
  @useResult
  $Res call(
      {String filter,
      List<CheckedPackage> checkedPackages,
      PackageList packageList});
}

/// @nodoc
class _$PackageListStateCopyWithImpl<$Res, $Val extends PackageListState>
    implements $PackageListStateCopyWith<$Res> {
  _$PackageListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? checkedPackages = null,
    Object? packageList = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      checkedPackages: null == checkedPackages
          ? _value.checkedPackages
          : checkedPackages // ignore: cast_nullable_to_non_nullable
              as List<CheckedPackage>,
      packageList: null == packageList
          ? _value.packageList
          : packageList // ignore: cast_nullable_to_non_nullable
              as PackageList,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageListStateCopyWith<$Res>
    implements $PackageListStateCopyWith<$Res> {
  factory _$$_PackageListStateCopyWith(
          _$_PackageListState value, $Res Function(_$_PackageListState) then) =
      __$$_PackageListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String filter,
      List<CheckedPackage> checkedPackages,
      PackageList packageList});
}

/// @nodoc
class __$$_PackageListStateCopyWithImpl<$Res>
    extends _$PackageListStateCopyWithImpl<$Res, _$_PackageListState>
    implements _$$_PackageListStateCopyWith<$Res> {
  __$$_PackageListStateCopyWithImpl(
      _$_PackageListState _value, $Res Function(_$_PackageListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? checkedPackages = null,
    Object? packageList = null,
  }) {
    return _then(_$_PackageListState(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      checkedPackages: null == checkedPackages
          ? _value._checkedPackages
          : checkedPackages // ignore: cast_nullable_to_non_nullable
              as List<CheckedPackage>,
      packageList: null == packageList
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
    if (_checkedPackages is EqualUnmodifiableListView) return _checkedPackages;
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
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._checkedPackages, _checkedPackages) &&
            (identical(other.packageList, packageList) ||
                other.packageList == packageList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter,
      const DeepCollectionEquality().hash(_checkedPackages), packageList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
