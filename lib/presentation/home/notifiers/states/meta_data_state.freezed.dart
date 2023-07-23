// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MetaDataState {
  String get org => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get platforms => throw _privateConstructorUsedError;
  String get androidLanguage => throw _privateConstructorUsedError;
  String get iosLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaDataStateCopyWith<MetaDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataStateCopyWith<$Res> {
  factory $MetaDataStateCopyWith(
          MetaDataState value, $Res Function(MetaDataState) then) =
      _$MetaDataStateCopyWithImpl<$Res, MetaDataState>;
  @useResult
  $Res call(
      {String org,
      String name,
      String description,
      List<String> platforms,
      String androidLanguage,
      String iosLanguage});
}

/// @nodoc
class _$MetaDataStateCopyWithImpl<$Res, $Val extends MetaDataState>
    implements $MetaDataStateCopyWith<$Res> {
  _$MetaDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? org = null,
    Object? name = null,
    Object? description = null,
    Object? platforms = null,
    Object? androidLanguage = null,
    Object? iosLanguage = null,
  }) {
    return _then(_value.copyWith(
      org: null == org
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      androidLanguage: null == androidLanguage
          ? _value.androidLanguage
          : androidLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      iosLanguage: null == iosLanguage
          ? _value.iosLanguage
          : iosLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataStateCopyWith<$Res>
    implements $MetaDataStateCopyWith<$Res> {
  factory _$$_MetaDataStateCopyWith(
          _$_MetaDataState value, $Res Function(_$_MetaDataState) then) =
      __$$_MetaDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String org,
      String name,
      String description,
      List<String> platforms,
      String androidLanguage,
      String iosLanguage});
}

/// @nodoc
class __$$_MetaDataStateCopyWithImpl<$Res>
    extends _$MetaDataStateCopyWithImpl<$Res, _$_MetaDataState>
    implements _$$_MetaDataStateCopyWith<$Res> {
  __$$_MetaDataStateCopyWithImpl(
      _$_MetaDataState _value, $Res Function(_$_MetaDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? org = null,
    Object? name = null,
    Object? description = null,
    Object? platforms = null,
    Object? androidLanguage = null,
    Object? iosLanguage = null,
  }) {
    return _then(_$_MetaDataState(
      org: null == org
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      androidLanguage: null == androidLanguage
          ? _value.androidLanguage
          : androidLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      iosLanguage: null == iosLanguage
          ? _value.iosLanguage
          : iosLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MetaDataState implements _MetaDataState {
  const _$_MetaDataState(
      {required this.org,
      required this.name,
      required this.description,
      required final List<String> platforms,
      required this.androidLanguage,
      required this.iosLanguage})
      : _platforms = platforms;

  @override
  final String org;
  @override
  final String name;
  @override
  final String description;
  final List<String> _platforms;
  @override
  List<String> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  final String androidLanguage;
  @override
  final String iosLanguage;

  @override
  String toString() {
    return 'MetaDataState(org: $org, name: $name, description: $description, platforms: $platforms, androidLanguage: $androidLanguage, iosLanguage: $iosLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataState &&
            (identical(other.org, org) || other.org == org) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms) &&
            (identical(other.androidLanguage, androidLanguage) ||
                other.androidLanguage == androidLanguage) &&
            (identical(other.iosLanguage, iosLanguage) ||
                other.iosLanguage == iosLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      org,
      name,
      description,
      const DeepCollectionEquality().hash(_platforms),
      androidLanguage,
      iosLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataStateCopyWith<_$_MetaDataState> get copyWith =>
      __$$_MetaDataStateCopyWithImpl<_$_MetaDataState>(this, _$identity);
}

abstract class _MetaDataState implements MetaDataState {
  const factory _MetaDataState(
      {required final String org,
      required final String name,
      required final String description,
      required final List<String> platforms,
      required final String androidLanguage,
      required final String iosLanguage}) = _$_MetaDataState;

  @override
  String get org;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get platforms;
  @override
  String get androidLanguage;
  @override
  String get iosLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataStateCopyWith<_$_MetaDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
