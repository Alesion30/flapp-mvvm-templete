// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'xxx_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$XXXStateTearOff {
  const _$XXXStateTearOff();

  _XXXState call({int count = 0}) {
    return _XXXState(
      count: count,
    );
  }
}

/// @nodoc
const $XXXState = _$XXXStateTearOff();

/// @nodoc
mixin _$XXXState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $XXXStateCopyWith<XXXState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XXXStateCopyWith<$Res> {
  factory $XXXStateCopyWith(XXXState value, $Res Function(XXXState) then) =
      _$XXXStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$XXXStateCopyWithImpl<$Res> implements $XXXStateCopyWith<$Res> {
  _$XXXStateCopyWithImpl(this._value, this._then);

  final XXXState _value;
  // ignore: unused_field
  final $Res Function(XXXState) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$XXXStateCopyWith<$Res> implements $XXXStateCopyWith<$Res> {
  factory _$XXXStateCopyWith(_XXXState value, $Res Function(_XXXState) then) =
      __$XXXStateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$XXXStateCopyWithImpl<$Res> extends _$XXXStateCopyWithImpl<$Res>
    implements _$XXXStateCopyWith<$Res> {
  __$XXXStateCopyWithImpl(_XXXState _value, $Res Function(_XXXState) _then)
      : super(_value, (v) => _then(v as _XXXState));

  @override
  _XXXState get _value => super._value as _XXXState;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_XXXState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_XXXState implements _XXXState {
  const _$_XXXState({this.count = 0});

  @JsonKey()
  @override
  final int count;

  @override
  String toString() {
    return 'XXXState(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XXXState &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$XXXStateCopyWith<_XXXState> get copyWith =>
      __$XXXStateCopyWithImpl<_XXXState>(this, _$identity);
}

abstract class _XXXState implements XXXState {
  const factory _XXXState({int count}) = _$_XXXState;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$XXXStateCopyWith<_XXXState> get copyWith =>
      throw _privateConstructorUsedError;
}
