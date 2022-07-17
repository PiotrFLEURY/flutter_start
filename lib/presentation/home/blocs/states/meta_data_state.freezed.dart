// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$MetaDataStateCopyWithImpl<$Res>;
  $Res call(
      {String org,
      String name,
      String description,
      List<String> platforms,
      String androidLanguage,
      String iosLanguage});
}

/// @nodoc
class _$MetaDataStateCopyWithImpl<$Res>
    implements $MetaDataStateCopyWith<$Res> {
  _$MetaDataStateCopyWithImpl(this._value, this._then);

  final MetaDataState _value;
  // ignore: unused_field
  final $Res Function(MetaDataState) _then;

  @override
  $Res call({
    Object? org = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? platforms = freezed,
    Object? androidLanguage = freezed,
    Object? iosLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      org: org == freezed
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      androidLanguage: androidLanguage == freezed
          ? _value.androidLanguage
          : androidLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      iosLanguage: iosLanguage == freezed
          ? _value.iosLanguage
          : iosLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaDataStateCopyWith<$Res>
    implements $MetaDataStateCopyWith<$Res> {
  factory _$$_MetaDataStateCopyWith(
          _$_MetaDataState value, $Res Function(_$_MetaDataState) then) =
      __$$_MetaDataStateCopyWithImpl<$Res>;
  @override
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
    extends _$MetaDataStateCopyWithImpl<$Res>
    implements _$$_MetaDataStateCopyWith<$Res> {
  __$$_MetaDataStateCopyWithImpl(
      _$_MetaDataState _value, $Res Function(_$_MetaDataState) _then)
      : super(_value, (v) => _then(v as _$_MetaDataState));

  @override
  _$_MetaDataState get _value => super._value as _$_MetaDataState;

  @override
  $Res call({
    Object? org = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? platforms = freezed,
    Object? androidLanguage = freezed,
    Object? iosLanguage = freezed,
  }) {
    return _then(_$_MetaDataState(
      org: org == freezed
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: platforms == freezed
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      androidLanguage: androidLanguage == freezed
          ? _value.androidLanguage
          : androidLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      iosLanguage: iosLanguage == freezed
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
            const DeepCollectionEquality().equals(other.org, org) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms) &&
            const DeepCollectionEquality()
                .equals(other.androidLanguage, androidLanguage) &&
            const DeepCollectionEquality()
                .equals(other.iosLanguage, iosLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(org),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_platforms),
      const DeepCollectionEquality().hash(androidLanguage),
      const DeepCollectionEquality().hash(iosLanguage));

  @JsonKey(ignore: true)
  @override
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
