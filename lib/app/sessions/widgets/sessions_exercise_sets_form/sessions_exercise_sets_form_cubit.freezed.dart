// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_exercise_sets_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionsExerciseSetsFormState {
  ControlStatus get formValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsExerciseSetsFormStateCopyWith<SessionsExerciseSetsFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsExerciseSetsFormStateCopyWith<$Res> {
  factory $SessionsExerciseSetsFormStateCopyWith(
          SessionsExerciseSetsFormState value,
          $Res Function(SessionsExerciseSetsFormState) then) =
      _$SessionsExerciseSetsFormStateCopyWithImpl<$Res,
          SessionsExerciseSetsFormState>;
  @useResult
  $Res call({ControlStatus formValid});
}

/// @nodoc
class _$SessionsExerciseSetsFormStateCopyWithImpl<$Res,
        $Val extends SessionsExerciseSetsFormState>
    implements $SessionsExerciseSetsFormStateCopyWith<$Res> {
  _$SessionsExerciseSetsFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
  }) {
    return _then(_value.copyWith(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SessionsExerciseSetsFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ControlStatus formValid});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SessionsExerciseSetsFormStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
  }) {
    return _then(_$InitialImpl(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.formValid = ControlStatus.pending});

  @override
  @JsonKey()
  final ControlStatus formValid;

  @override
  String toString() {
    return 'SessionsExerciseSetsFormState.initial(formValid: $formValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid) initial,
  }) {
    return initial(formValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid)? initial,
  }) {
    return initial?.call(formValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(formValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SessionsExerciseSetsFormState {
  const factory _Initial({final ControlStatus formValid}) = _$InitialImpl;

  @override
  ControlStatus get formValid;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
