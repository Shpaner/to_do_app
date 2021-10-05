// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_item_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddItemScreenStateTearOff {
  const _$AddItemScreenStateTearOff();

  _AddItemScreenState call(
      {required Category category,
      required String title,
      required String note}) {
    return _AddItemScreenState(
      category: category,
      title: title,
      note: note,
    );
  }
}

/// @nodoc
const $AddItemScreenState = _$AddItemScreenStateTearOff();

/// @nodoc
mixin _$AddItemScreenState {
  Category get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddItemScreenStateCopyWith<AddItemScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemScreenStateCopyWith<$Res> {
  factory $AddItemScreenStateCopyWith(
          AddItemScreenState value, $Res Function(AddItemScreenState) then) =
      _$AddItemScreenStateCopyWithImpl<$Res>;
  $Res call({Category category, String title, String note});
}

/// @nodoc
class _$AddItemScreenStateCopyWithImpl<$Res>
    implements $AddItemScreenStateCopyWith<$Res> {
  _$AddItemScreenStateCopyWithImpl(this._value, this._then);

  final AddItemScreenState _value;
  // ignore: unused_field
  final $Res Function(AddItemScreenState) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? title = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddItemScreenStateCopyWith<$Res>
    implements $AddItemScreenStateCopyWith<$Res> {
  factory _$AddItemScreenStateCopyWith(
          _AddItemScreenState value, $Res Function(_AddItemScreenState) then) =
      __$AddItemScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({Category category, String title, String note});
}

/// @nodoc
class __$AddItemScreenStateCopyWithImpl<$Res>
    extends _$AddItemScreenStateCopyWithImpl<$Res>
    implements _$AddItemScreenStateCopyWith<$Res> {
  __$AddItemScreenStateCopyWithImpl(
      _AddItemScreenState _value, $Res Function(_AddItemScreenState) _then)
      : super(_value, (v) => _then(v as _AddItemScreenState));

  @override
  _AddItemScreenState get _value => super._value as _AddItemScreenState;

  @override
  $Res call({
    Object? category = freezed,
    Object? title = freezed,
    Object? note = freezed,
  }) {
    return _then(_AddItemScreenState(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddItemScreenState extends _AddItemScreenState {
  const _$_AddItemScreenState(
      {required this.category, required this.title, required this.note})
      : super._();

  @override
  final Category category;
  @override
  final String title;
  @override
  final String note;

  @override
  String toString() {
    return 'AddItemScreenState(category: $category, title: $title, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddItemScreenState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  _$AddItemScreenStateCopyWith<_AddItemScreenState> get copyWith =>
      __$AddItemScreenStateCopyWithImpl<_AddItemScreenState>(this, _$identity);
}

abstract class _AddItemScreenState extends AddItemScreenState {
  const factory _AddItemScreenState(
      {required Category category,
      required String title,
      required String note}) = _$_AddItemScreenState;
  const _AddItemScreenState._() : super._();

  @override
  Category get category => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddItemScreenStateCopyWith<_AddItemScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
