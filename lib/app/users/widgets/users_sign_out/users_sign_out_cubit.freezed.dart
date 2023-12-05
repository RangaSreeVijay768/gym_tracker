// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_sign_out_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersSignOutState {
  SignOutResponse? get signOutResponse => throw _privateConstructorUsedError;
  BooleanStatus get signOutStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignOutResponse? signOutResponse, BooleanStatus signOutStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SignOutResponse? signOutResponse, BooleanStatus signOutStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SignOutResponse? signOutResponse, BooleanStatus signOutStatus)?
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
  $UsersSignOutStateCopyWith<UsersSignOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersSignOutStateCopyWith<$Res> {
  factory $UsersSignOutStateCopyWith(
          UsersSignOutState value, $Res Function(UsersSignOutState) then) =
      _$UsersSignOutStateCopyWithImpl<$Res, UsersSignOutState>;
  @useResult
  $Res call({SignOutResponse? signOutResponse, BooleanStatus signOutStatus});
}

/// @nodoc
class _$UsersSignOutStateCopyWithImpl<$Res, $Val extends UsersSignOutState>
    implements $UsersSignOutStateCopyWith<$Res> {
  _$UsersSignOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signOutResponse = freezed,
    Object? signOutStatus = null,
  }) {
    return _then(_value.copyWith(
      signOutResponse: freezed == signOutResponse
          ? _value.signOutResponse
          : signOutResponse // ignore: cast_nullable_to_non_nullable
              as SignOutResponse?,
      signOutStatus: null == signOutStatus
          ? _value.signOutStatus
          : signOutStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UsersSignOutStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignOutResponse? signOutResponse, BooleanStatus signOutStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UsersSignOutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signOutResponse = freezed,
    Object? signOutStatus = null,
  }) {
    return _then(_$InitialImpl(
      signOutResponse: freezed == signOutResponse
          ? _value.signOutResponse
          : signOutResponse // ignore: cast_nullable_to_non_nullable
              as SignOutResponse?,
      signOutStatus: null == signOutStatus
          ? _value.signOutStatus
          : signOutStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.signOutResponse, this.signOutStatus = BooleanStatus.initial});

  @override
  final SignOutResponse? signOutResponse;
  @override
  @JsonKey()
  final BooleanStatus signOutStatus;

  @override
  String toString() {
    return 'UsersSignOutState.initial(signOutResponse: $signOutResponse, signOutStatus: $signOutStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.signOutResponse, signOutResponse) ||
                other.signOutResponse == signOutResponse) &&
            (identical(other.signOutStatus, signOutStatus) ||
                other.signOutStatus == signOutStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signOutResponse, signOutStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SignOutResponse? signOutResponse, BooleanStatus signOutStatus)
        initial,
  }) {
    return initial(signOutResponse, signOutStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SignOutResponse? signOutResponse, BooleanStatus signOutStatus)?
        initial,
  }) {
    return initial?.call(signOutResponse, signOutStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SignOutResponse? signOutResponse, BooleanStatus signOutStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(signOutResponse, signOutStatus);
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

abstract class _Initial implements UsersSignOutState {
  const factory _Initial(
      {final SignOutResponse? signOutResponse,
      final BooleanStatus signOutStatus}) = _$InitialImpl;

  @override
  SignOutResponse? get signOutResponse;
  @override
  BooleanStatus get signOutStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
