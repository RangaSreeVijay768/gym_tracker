// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_get_gym_session_exercise_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionsGetGymSessionExerciseState {
  GetGymSessionExerciseResponse? get getGymSessionExerciseResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get getGymSessionExerciseStatus =>
      throw _privateConstructorUsedError;
  Exercise get exercise => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
            BooleanStatus getGymSessionExerciseStatus,
            Exercise exercise)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
            BooleanStatus getGymSessionExerciseStatus,
            Exercise exercise)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
            BooleanStatus getGymSessionExerciseStatus,
            Exercise exercise)?
        initial,
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
  $SessionsGetGymSessionExerciseStateCopyWith<
          SessionsGetGymSessionExerciseState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsGetGymSessionExerciseStateCopyWith<$Res> {
  factory $SessionsGetGymSessionExerciseStateCopyWith(
          SessionsGetGymSessionExerciseState value,
          $Res Function(SessionsGetGymSessionExerciseState) then) =
      _$SessionsGetGymSessionExerciseStateCopyWithImpl<$Res,
          SessionsGetGymSessionExerciseState>;
  @useResult
  $Res call(
      {GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
      BooleanStatus getGymSessionExerciseStatus,
      Exercise exercise});
}

/// @nodoc
class _$SessionsGetGymSessionExerciseStateCopyWithImpl<$Res,
        $Val extends SessionsGetGymSessionExerciseState>
    implements $SessionsGetGymSessionExerciseStateCopyWith<$Res> {
  _$SessionsGetGymSessionExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getGymSessionExerciseResponse = freezed,
    Object? getGymSessionExerciseStatus = null,
    Object? exercise = null,
  }) {
    return _then(_value.copyWith(
      getGymSessionExerciseResponse: freezed == getGymSessionExerciseResponse
          ? _value.getGymSessionExerciseResponse
          : getGymSessionExerciseResponse // ignore: cast_nullable_to_non_nullable
              as GetGymSessionExerciseResponse?,
      getGymSessionExerciseStatus: null == getGymSessionExerciseStatus
          ? _value.getGymSessionExerciseStatus
          : getGymSessionExerciseStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SessionsGetGymSessionExerciseStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
      BooleanStatus getGymSessionExerciseStatus,
      Exercise exercise});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SessionsGetGymSessionExerciseStateCopyWithImpl<$Res,
        _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getGymSessionExerciseResponse = freezed,
    Object? getGymSessionExerciseStatus = null,
    Object? exercise = null,
  }) {
    return _then(_$InitialImpl(
      getGymSessionExerciseResponse: freezed == getGymSessionExerciseResponse
          ? _value.getGymSessionExerciseResponse
          : getGymSessionExerciseResponse // ignore: cast_nullable_to_non_nullable
              as GetGymSessionExerciseResponse?,
      getGymSessionExerciseStatus: null == getGymSessionExerciseStatus
          ? _value.getGymSessionExerciseStatus
          : getGymSessionExerciseStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getGymSessionExerciseResponse,
      this.getGymSessionExerciseStatus = BooleanStatus.initial,
      required this.exercise});

  @override
  final GetGymSessionExerciseResponse? getGymSessionExerciseResponse;
  @override
  @JsonKey()
  final BooleanStatus getGymSessionExerciseStatus;
  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'SessionsGetGymSessionExerciseState.initial(getGymSessionExerciseResponse: $getGymSessionExerciseResponse, getGymSessionExerciseStatus: $getGymSessionExerciseStatus, exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getGymSessionExerciseResponse,
                    getGymSessionExerciseResponse) ||
                other.getGymSessionExerciseResponse ==
                    getGymSessionExerciseResponse) &&
            (identical(other.getGymSessionExerciseStatus,
                    getGymSessionExerciseStatus) ||
                other.getGymSessionExerciseStatus ==
                    getGymSessionExerciseStatus) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getGymSessionExerciseResponse,
      getGymSessionExerciseStatus, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
            BooleanStatus getGymSessionExerciseStatus,
            Exercise exercise)
        initial,
  }) {
    return initial(
        getGymSessionExerciseResponse, getGymSessionExerciseStatus, exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
            BooleanStatus getGymSessionExerciseStatus,
            Exercise exercise)?
        initial,
  }) {
    return initial?.call(
        getGymSessionExerciseResponse, getGymSessionExerciseStatus, exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
            BooleanStatus getGymSessionExerciseStatus,
            Exercise exercise)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          getGymSessionExerciseResponse, getGymSessionExerciseStatus, exercise);
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

abstract class _Initial implements SessionsGetGymSessionExerciseState {
  const factory _Initial(
      {final GetGymSessionExerciseResponse? getGymSessionExerciseResponse,
      final BooleanStatus getGymSessionExerciseStatus,
      required final Exercise exercise}) = _$InitialImpl;

  @override
  GetGymSessionExerciseResponse? get getGymSessionExerciseResponse;
  @override
  BooleanStatus get getGymSessionExerciseStatus;
  @override
  Exercise get exercise;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
