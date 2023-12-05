// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  BooleanStatus get authenticationStatus => throw _privateConstructorUsedError;
  UserAccount? get userAccount => throw _privateConstructorUsedError;
  UserCredential? get userCredential => throw _privateConstructorUsedError;
  UserAuthToken? get userAuthToken => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BooleanStatus authenticationStatus,
            UserAccount? userAccount,
            UserCredential? userCredential,
            UserAuthToken? userAuthToken)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BooleanStatus authenticationStatus,
            UserAccount? userAccount,
            UserCredential? userCredential,
            UserAuthToken? userAuthToken)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BooleanStatus authenticationStatus,
            UserAccount? userAccount,
            UserCredential? userCredential,
            UserAuthToken? userAuthToken)?
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
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {BooleanStatus authenticationStatus,
      UserAccount? userAccount,
      UserCredential? userCredential,
      UserAuthToken? userAuthToken});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatus = null,
    Object? userAccount = freezed,
    Object? userCredential = freezed,
    Object? userAuthToken = freezed,
  }) {
    return _then(_value.copyWith(
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
      userAuthToken: freezed == userAuthToken
          ? _value.userAuthToken
          : userAuthToken // ignore: cast_nullable_to_non_nullable
              as UserAuthToken?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BooleanStatus authenticationStatus,
      UserAccount? userAccount,
      UserCredential? userCredential,
      UserAuthToken? userAuthToken});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatus = null,
    Object? userAccount = freezed,
    Object? userCredential = freezed,
    Object? userAuthToken = freezed,
  }) {
    return _then(_$InitialImpl(
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      userAccount: freezed == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
      userAuthToken: freezed == userAuthToken
          ? _value.userAuthToken
          : userAuthToken // ignore: cast_nullable_to_non_nullable
              as UserAuthToken?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.authenticationStatus = BooleanStatus.initial,
      this.userAccount,
      this.userCredential,
      this.userAuthToken});

  @override
  @JsonKey()
  final BooleanStatus authenticationStatus;
  @override
  final UserAccount? userAccount;
  @override
  final UserCredential? userCredential;
  @override
  final UserAuthToken? userAuthToken;

  @override
  String toString() {
    return 'AuthenticationState.initial(authenticationStatus: $authenticationStatus, userAccount: $userAccount, userCredential: $userCredential, userAuthToken: $userAuthToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                other.authenticationStatus == authenticationStatus) &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount) &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential) &&
            (identical(other.userAuthToken, userAuthToken) ||
                other.userAuthToken == userAuthToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationStatus,
      userAccount, userCredential, userAuthToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BooleanStatus authenticationStatus,
            UserAccount? userAccount,
            UserCredential? userCredential,
            UserAuthToken? userAuthToken)
        initial,
  }) {
    return initial(
        authenticationStatus, userAccount, userCredential, userAuthToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BooleanStatus authenticationStatus,
            UserAccount? userAccount,
            UserCredential? userCredential,
            UserAuthToken? userAuthToken)?
        initial,
  }) {
    return initial?.call(
        authenticationStatus, userAccount, userCredential, userAuthToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BooleanStatus authenticationStatus,
            UserAccount? userAccount,
            UserCredential? userCredential,
            UserAuthToken? userAuthToken)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          authenticationStatus, userAccount, userCredential, userAuthToken);
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

abstract class _Initial implements AuthenticationState {
  const factory _Initial(
      {final BooleanStatus authenticationStatus,
      final UserAccount? userAccount,
      final UserCredential? userCredential,
      final UserAuthToken? userAuthToken}) = _$InitialImpl;

  @override
  BooleanStatus get authenticationStatus;
  @override
  UserAccount? get userAccount;
  @override
  UserCredential? get userCredential;
  @override
  UserAuthToken? get userAuthToken;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
