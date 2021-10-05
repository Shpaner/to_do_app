// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListScreenStateTearOff {
  const _$ListScreenStateTearOff();

  _ListScreenState call({required bool isLoading}) {
    return _ListScreenState(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ListScreenState = _$ListScreenStateTearOff();

/// @nodoc
mixin _$ListScreenState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListScreenStateCopyWith<ListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListScreenStateCopyWith<$Res> {
  factory $ListScreenStateCopyWith(
          ListScreenState value, $Res Function(ListScreenState) then) =
      _$ListScreenStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$ListScreenStateCopyWithImpl<$Res>
    implements $ListScreenStateCopyWith<$Res> {
  _$ListScreenStateCopyWithImpl(this._value, this._then);

  final ListScreenState _value;
  // ignore: unused_field
  final $Res Function(ListScreenState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ListScreenStateCopyWith<$Res>
    implements $ListScreenStateCopyWith<$Res> {
  factory _$ListScreenStateCopyWith(
          _ListScreenState value, $Res Function(_ListScreenState) then) =
      __$ListScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$ListScreenStateCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res>
    implements _$ListScreenStateCopyWith<$Res> {
  __$ListScreenStateCopyWithImpl(
      _ListScreenState _value, $Res Function(_ListScreenState) _then)
      : super(_value, (v) => _then(v as _ListScreenState));

  @override
  _ListScreenState get _value => super._value as _ListScreenState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_ListScreenState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ListScreenState extends _ListScreenState {
  const _$_ListScreenState({required this.isLoading}) : super._();

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ListScreenState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListScreenState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ListScreenStateCopyWith<_ListScreenState> get copyWith =>
      __$ListScreenStateCopyWithImpl<_ListScreenState>(this, _$identity);
}

abstract class _ListScreenState extends ListScreenState {
  const factory _ListScreenState({required bool isLoading}) =
      _$_ListScreenState;
  const _ListScreenState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListScreenStateCopyWith<_ListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
