// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_create_workout_session_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersCreateWorkoutSessionState {
  DocumentReference<WorkoutSession>? get createWorkoutSessionResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get createWorkoutSessionStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
            BooleanStatus createWorkoutSessionStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
            BooleanStatus createWorkoutSessionStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
            BooleanStatus createWorkoutSessionStatus)?
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
  $UsersCreateWorkoutSessionStateCopyWith<UsersCreateWorkoutSessionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCreateWorkoutSessionStateCopyWith<$Res> {
  factory $UsersCreateWorkoutSessionStateCopyWith(
          UsersCreateWorkoutSessionState value,
          $Res Function(UsersCreateWorkoutSessionState) then) =
      _$UsersCreateWorkoutSessionStateCopyWithImpl<$Res,
          UsersCreateWorkoutSessionState>;
  @useResult
  $Res call(
      {DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
      BooleanStatus createWorkoutSessionStatus});
}

/// @nodoc
class _$UsersCreateWorkoutSessionStateCopyWithImpl<$Res,
        $Val extends UsersCreateWorkoutSessionState>
    implements $UsersCreateWorkoutSessionStateCopyWith<$Res> {
  _$UsersCreateWorkoutSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createWorkoutSessionResponse = freezed,
    Object? createWorkoutSessionStatus = null,
  }) {
    return _then(_value.copyWith(
      createWorkoutSessionResponse: freezed == createWorkoutSessionResponse
          ? _value.createWorkoutSessionResponse
          : createWorkoutSessionResponse // ignore: cast_nullable_to_non_nullable
              as DocumentReference<WorkoutSession>?,
      createWorkoutSessionStatus: null == createWorkoutSessionStatus
          ? _value.createWorkoutSessionStatus
          : createWorkoutSessionStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UsersCreateWorkoutSessionStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
      BooleanStatus createWorkoutSessionStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UsersCreateWorkoutSessionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createWorkoutSessionResponse = freezed,
    Object? createWorkoutSessionStatus = null,
  }) {
    return _then(_$InitialImpl(
      createWorkoutSessionResponse: freezed == createWorkoutSessionResponse
          ? _value.createWorkoutSessionResponse
          : createWorkoutSessionResponse // ignore: cast_nullable_to_non_nullable
              as DocumentReference<WorkoutSession>?,
      createWorkoutSessionStatus: null == createWorkoutSessionStatus
          ? _value.createWorkoutSessionStatus
          : createWorkoutSessionStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.createWorkoutSessionResponse,
      this.createWorkoutSessionStatus = BooleanStatus.initial});

  @override
  final DocumentReference<WorkoutSession>? createWorkoutSessionResponse;
  @override
  @JsonKey()
  final BooleanStatus createWorkoutSessionStatus;

  @override
  String toString() {
    return 'UsersCreateWorkoutSessionState.initial(createWorkoutSessionResponse: $createWorkoutSessionResponse, createWorkoutSessionStatus: $createWorkoutSessionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.createWorkoutSessionResponse,
                    createWorkoutSessionResponse) ||
                other.createWorkoutSessionResponse ==
                    createWorkoutSessionResponse) &&
            (identical(other.createWorkoutSessionStatus,
                    createWorkoutSessionStatus) ||
                other.createWorkoutSessionStatus ==
                    createWorkoutSessionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, createWorkoutSessionResponse, createWorkoutSessionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
            BooleanStatus createWorkoutSessionStatus)
        initial,
  }) {
    return initial(createWorkoutSessionResponse, createWorkoutSessionStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
            BooleanStatus createWorkoutSessionStatus)?
        initial,
  }) {
    return initial?.call(
        createWorkoutSessionResponse, createWorkoutSessionStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
            BooleanStatus createWorkoutSessionStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(createWorkoutSessionResponse, createWorkoutSessionStatus);
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

abstract class _Initial implements UsersCreateWorkoutSessionState {
  const factory _Initial(
      {final DocumentReference<WorkoutSession>? createWorkoutSessionResponse,
      final BooleanStatus createWorkoutSessionStatus}) = _$InitialImpl;

  @override
  DocumentReference<WorkoutSession>? get createWorkoutSessionResponse;
  @override
  BooleanStatus get createWorkoutSessionStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
