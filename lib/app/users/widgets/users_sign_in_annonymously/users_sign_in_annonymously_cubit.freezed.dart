// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_sign_in_annonymously_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersSignInAnnonymouslyState {
  UserCredential? get signInAnonymouslyResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get signInAnonymouslyStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential? signInAnonymouslyResponse,
            BooleanStatus signInAnonymouslyStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential? signInAnonymouslyResponse,
            BooleanStatus signInAnonymouslyStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential? signInAnonymouslyResponse,
            BooleanStatus signInAnonymouslyStatus)?
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
  $UsersSignInAnnonymouslyStateCopyWith<UsersSignInAnnonymouslyState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersSignInAnnonymouslyStateCopyWith<$Res> {
  factory $UsersSignInAnnonymouslyStateCopyWith(
          UsersSignInAnnonymouslyState value,
          $Res Function(UsersSignInAnnonymouslyState) then) =
      _$UsersSignInAnnonymouslyStateCopyWithImpl<$Res,
          UsersSignInAnnonymouslyState>;
  @useResult
  $Res call(
      {UserCredential? signInAnonymouslyResponse,
      BooleanStatus signInAnonymouslyStatus});
}

/// @nodoc
class _$UsersSignInAnnonymouslyStateCopyWithImpl<$Res,
        $Val extends UsersSignInAnnonymouslyState>
    implements $UsersSignInAnnonymouslyStateCopyWith<$Res> {
  _$UsersSignInAnnonymouslyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInAnonymouslyResponse = freezed,
    Object? signInAnonymouslyStatus = null,
  }) {
    return _then(_value.copyWith(
      signInAnonymouslyResponse: freezed == signInAnonymouslyResponse
          ? _value.signInAnonymouslyResponse
          : signInAnonymouslyResponse // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
      signInAnonymouslyStatus: null == signInAnonymouslyStatus
          ? _value.signInAnonymouslyStatus
          : signInAnonymouslyStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UsersSignInAnnonymouslyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserCredential? signInAnonymouslyResponse,
      BooleanStatus signInAnonymouslyStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UsersSignInAnnonymouslyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInAnonymouslyResponse = freezed,
    Object? signInAnonymouslyStatus = null,
  }) {
    return _then(_$InitialImpl(
      signInAnonymouslyResponse: freezed == signInAnonymouslyResponse
          ? _value.signInAnonymouslyResponse
          : signInAnonymouslyResponse // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
      signInAnonymouslyStatus: null == signInAnonymouslyStatus
          ? _value.signInAnonymouslyStatus
          : signInAnonymouslyStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.signInAnonymouslyResponse,
      this.signInAnonymouslyStatus = BooleanStatus.initial});

  @override
  final UserCredential? signInAnonymouslyResponse;
  @override
  @JsonKey()
  final BooleanStatus signInAnonymouslyStatus;

  @override
  String toString() {
    return 'UsersSignInAnnonymouslyState.initial(signInAnonymouslyResponse: $signInAnonymouslyResponse, signInAnonymouslyStatus: $signInAnonymouslyStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.signInAnonymouslyResponse,
                    signInAnonymouslyResponse) ||
                other.signInAnonymouslyResponse == signInAnonymouslyResponse) &&
            (identical(
                    other.signInAnonymouslyStatus, signInAnonymouslyStatus) ||
                other.signInAnonymouslyStatus == signInAnonymouslyStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, signInAnonymouslyResponse, signInAnonymouslyStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential? signInAnonymouslyResponse,
            BooleanStatus signInAnonymouslyStatus)
        initial,
  }) {
    return initial(signInAnonymouslyResponse, signInAnonymouslyStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential? signInAnonymouslyResponse,
            BooleanStatus signInAnonymouslyStatus)?
        initial,
  }) {
    return initial?.call(signInAnonymouslyResponse, signInAnonymouslyStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential? signInAnonymouslyResponse,
            BooleanStatus signInAnonymouslyStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(signInAnonymouslyResponse, signInAnonymouslyStatus);
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

abstract class _Initial implements UsersSignInAnnonymouslyState {
  const factory _Initial(
      {final UserCredential? signInAnonymouslyResponse,
      final BooleanStatus signInAnonymouslyStatus}) = _$InitialImpl;

  @override
  UserCredential? get signInAnonymouslyResponse;
  @override
  BooleanStatus get signInAnonymouslyStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
