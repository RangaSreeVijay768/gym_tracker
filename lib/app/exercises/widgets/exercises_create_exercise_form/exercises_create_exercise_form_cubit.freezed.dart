// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercises_create_exercise_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExercisesCreateExerciseFormState {
  ControlStatus get formValid => throw _privateConstructorUsedError;
  CreateExerciseResponse? get createExerciseResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get createExerciseStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ControlStatus formValid,
            CreateExerciseResponse? createExerciseResponse,
            BooleanStatus createExerciseStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ControlStatus formValid,
            CreateExerciseResponse? createExerciseResponse,
            BooleanStatus createExerciseStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ControlStatus formValid,
            CreateExerciseResponse? createExerciseResponse,
            BooleanStatus createExerciseStatus)?
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
  $ExercisesCreateExerciseFormStateCopyWith<ExercisesCreateExerciseFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisesCreateExerciseFormStateCopyWith<$Res> {
  factory $ExercisesCreateExerciseFormStateCopyWith(
          ExercisesCreateExerciseFormState value,
          $Res Function(ExercisesCreateExerciseFormState) then) =
      _$ExercisesCreateExerciseFormStateCopyWithImpl<$Res,
          ExercisesCreateExerciseFormState>;
  @useResult
  $Res call(
      {ControlStatus formValid,
      CreateExerciseResponse? createExerciseResponse,
      BooleanStatus createExerciseStatus});
}

/// @nodoc
class _$ExercisesCreateExerciseFormStateCopyWithImpl<$Res,
        $Val extends ExercisesCreateExerciseFormState>
    implements $ExercisesCreateExerciseFormStateCopyWith<$Res> {
  _$ExercisesCreateExerciseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? createExerciseResponse = freezed,
    Object? createExerciseStatus = null,
  }) {
    return _then(_value.copyWith(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      createExerciseResponse: freezed == createExerciseResponse
          ? _value.createExerciseResponse
          : createExerciseResponse // ignore: cast_nullable_to_non_nullable
              as CreateExerciseResponse?,
      createExerciseStatus: null == createExerciseStatus
          ? _value.createExerciseStatus
          : createExerciseStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ExercisesCreateExerciseFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ControlStatus formValid,
      CreateExerciseResponse? createExerciseResponse,
      BooleanStatus createExerciseStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ExercisesCreateExerciseFormStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? createExerciseResponse = freezed,
    Object? createExerciseStatus = null,
  }) {
    return _then(_$InitialImpl(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      createExerciseResponse: freezed == createExerciseResponse
          ? _value.createExerciseResponse
          : createExerciseResponse // ignore: cast_nullable_to_non_nullable
              as CreateExerciseResponse?,
      createExerciseStatus: null == createExerciseStatus
          ? _value.createExerciseStatus
          : createExerciseStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.formValid = ControlStatus.pending,
      this.createExerciseResponse,
      this.createExerciseStatus = BooleanStatus.initial});

  @override
  @JsonKey()
  final ControlStatus formValid;
  @override
  final CreateExerciseResponse? createExerciseResponse;
  @override
  @JsonKey()
  final BooleanStatus createExerciseStatus;

  @override
  String toString() {
    return 'ExercisesCreateExerciseFormState.initial(formValid: $formValid, createExerciseResponse: $createExerciseResponse, createExerciseStatus: $createExerciseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid) &&
            (identical(other.createExerciseResponse, createExerciseResponse) ||
                other.createExerciseResponse == createExerciseResponse) &&
            (identical(other.createExerciseStatus, createExerciseStatus) ||
                other.createExerciseStatus == createExerciseStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, formValid, createExerciseResponse, createExerciseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ControlStatus formValid,
            CreateExerciseResponse? createExerciseResponse,
            BooleanStatus createExerciseStatus)
        initial,
  }) {
    return initial(formValid, createExerciseResponse, createExerciseStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ControlStatus formValid,
            CreateExerciseResponse? createExerciseResponse,
            BooleanStatus createExerciseStatus)?
        initial,
  }) {
    return initial?.call(
        formValid, createExerciseResponse, createExerciseStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ControlStatus formValid,
            CreateExerciseResponse? createExerciseResponse,
            BooleanStatus createExerciseStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(formValid, createExerciseResponse, createExerciseStatus);
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

abstract class _Initial implements ExercisesCreateExerciseFormState {
  const factory _Initial(
      {final ControlStatus formValid,
      final CreateExerciseResponse? createExerciseResponse,
      final BooleanStatus createExerciseStatus}) = _$InitialImpl;

  @override
  ControlStatus get formValid;
  @override
  CreateExerciseResponse? get createExerciseResponse;
  @override
  BooleanStatus get createExerciseStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
