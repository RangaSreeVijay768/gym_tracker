// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_create_new_gym_session_modal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerCreateNewGymSessionModalState {
  GymSession? get gymSession => throw _privateConstructorUsedError;
  bool? get openModal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GymSession? gymSession, bool? openModal) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GymSession? gymSession, bool? openModal)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GymSession? gymSession, bool? openModal)? initial,
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
  $TrackerCreateNewGymSessionModalStateCopyWith<
          TrackerCreateNewGymSessionModalState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerCreateNewGymSessionModalStateCopyWith<$Res> {
  factory $TrackerCreateNewGymSessionModalStateCopyWith(
          TrackerCreateNewGymSessionModalState value,
          $Res Function(TrackerCreateNewGymSessionModalState) then) =
      _$TrackerCreateNewGymSessionModalStateCopyWithImpl<$Res,
          TrackerCreateNewGymSessionModalState>;
  @useResult
  $Res call({GymSession? gymSession, bool? openModal});
}

/// @nodoc
class _$TrackerCreateNewGymSessionModalStateCopyWithImpl<$Res,
        $Val extends TrackerCreateNewGymSessionModalState>
    implements $TrackerCreateNewGymSessionModalStateCopyWith<$Res> {
  _$TrackerCreateNewGymSessionModalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gymSession = freezed,
    Object? openModal = freezed,
  }) {
    return _then(_value.copyWith(
      gymSession: freezed == gymSession
          ? _value.gymSession
          : gymSession // ignore: cast_nullable_to_non_nullable
              as GymSession?,
      openModal: freezed == openModal
          ? _value.openModal
          : openModal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TrackerCreateNewGymSessionModalStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GymSession? gymSession, bool? openModal});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TrackerCreateNewGymSessionModalStateCopyWithImpl<$Res,
        _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gymSession = freezed,
    Object? openModal = freezed,
  }) {
    return _then(_$InitialImpl(
      gymSession: freezed == gymSession
          ? _value.gymSession
          : gymSession // ignore: cast_nullable_to_non_nullable
              as GymSession?,
      openModal: freezed == openModal
          ? _value.openModal
          : openModal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.gymSession, this.openModal = false});

  @override
  final GymSession? gymSession;
  @override
  @JsonKey()
  final bool? openModal;

  @override
  String toString() {
    return 'TrackerCreateNewGymSessionModalState.initial(gymSession: $gymSession, openModal: $openModal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.gymSession, gymSession) ||
                other.gymSession == gymSession) &&
            (identical(other.openModal, openModal) ||
                other.openModal == openModal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gymSession, openModal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GymSession? gymSession, bool? openModal) initial,
  }) {
    return initial(gymSession, openModal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GymSession? gymSession, bool? openModal)? initial,
  }) {
    return initial?.call(gymSession, openModal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GymSession? gymSession, bool? openModal)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gymSession, openModal);
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

abstract class _Initial implements TrackerCreateNewGymSessionModalState {
  const factory _Initial(
      {final GymSession? gymSession, final bool? openModal}) = _$InitialImpl;

  @override
  GymSession? get gymSession;
  @override
  bool? get openModal;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
