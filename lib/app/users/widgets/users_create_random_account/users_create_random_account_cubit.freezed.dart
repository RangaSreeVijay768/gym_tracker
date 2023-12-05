// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_create_random_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersCreateRandomAccountState {
  String? get accountName => throw _privateConstructorUsedError;
  CreateUserAccountResponse? get createUserAccountResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get createUserAccountStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? accountName,
            CreateUserAccountResponse? createUserAccountResponse,
            BooleanStatus createUserAccountStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? accountName,
            CreateUserAccountResponse? createUserAccountResponse,
            BooleanStatus createUserAccountStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? accountName,
            CreateUserAccountResponse? createUserAccountResponse,
            BooleanStatus createUserAccountStatus)?
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
  $UsersCreateRandomAccountStateCopyWith<UsersCreateRandomAccountState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCreateRandomAccountStateCopyWith<$Res> {
  factory $UsersCreateRandomAccountStateCopyWith(
          UsersCreateRandomAccountState value,
          $Res Function(UsersCreateRandomAccountState) then) =
      _$UsersCreateRandomAccountStateCopyWithImpl<$Res,
          UsersCreateRandomAccountState>;
  @useResult
  $Res call(
      {String? accountName,
      CreateUserAccountResponse? createUserAccountResponse,
      BooleanStatus createUserAccountStatus});
}

/// @nodoc
class _$UsersCreateRandomAccountStateCopyWithImpl<$Res,
        $Val extends UsersCreateRandomAccountState>
    implements $UsersCreateRandomAccountStateCopyWith<$Res> {
  _$UsersCreateRandomAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? createUserAccountResponse = freezed,
    Object? createUserAccountStatus = null,
  }) {
    return _then(_value.copyWith(
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserAccountResponse: freezed == createUserAccountResponse
          ? _value.createUserAccountResponse
          : createUserAccountResponse // ignore: cast_nullable_to_non_nullable
              as CreateUserAccountResponse?,
      createUserAccountStatus: null == createUserAccountStatus
          ? _value.createUserAccountStatus
          : createUserAccountStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UsersCreateRandomAccountStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountName,
      CreateUserAccountResponse? createUserAccountResponse,
      BooleanStatus createUserAccountStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UsersCreateRandomAccountStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? createUserAccountResponse = freezed,
    Object? createUserAccountStatus = null,
  }) {
    return _then(_$InitialImpl(
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserAccountResponse: freezed == createUserAccountResponse
          ? _value.createUserAccountResponse
          : createUserAccountResponse // ignore: cast_nullable_to_non_nullable
              as CreateUserAccountResponse?,
      createUserAccountStatus: null == createUserAccountStatus
          ? _value.createUserAccountStatus
          : createUserAccountStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.accountName,
      this.createUserAccountResponse,
      this.createUserAccountStatus = BooleanStatus.initial});

  @override
  final String? accountName;
  @override
  final CreateUserAccountResponse? createUserAccountResponse;
  @override
  @JsonKey()
  final BooleanStatus createUserAccountStatus;

  @override
  String toString() {
    return 'UsersCreateRandomAccountState.initial(accountName: $accountName, createUserAccountResponse: $createUserAccountResponse, createUserAccountStatus: $createUserAccountStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.createUserAccountResponse,
                    createUserAccountResponse) ||
                other.createUserAccountResponse == createUserAccountResponse) &&
            (identical(
                    other.createUserAccountStatus, createUserAccountStatus) ||
                other.createUserAccountStatus == createUserAccountStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountName,
      createUserAccountResponse, createUserAccountStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? accountName,
            CreateUserAccountResponse? createUserAccountResponse,
            BooleanStatus createUserAccountStatus)
        initial,
  }) {
    return initial(
        accountName, createUserAccountResponse, createUserAccountStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? accountName,
            CreateUserAccountResponse? createUserAccountResponse,
            BooleanStatus createUserAccountStatus)?
        initial,
  }) {
    return initial?.call(
        accountName, createUserAccountResponse, createUserAccountStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? accountName,
            CreateUserAccountResponse? createUserAccountResponse,
            BooleanStatus createUserAccountStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          accountName, createUserAccountResponse, createUserAccountStatus);
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

abstract class _Initial implements UsersCreateRandomAccountState {
  const factory _Initial(
      {final String? accountName,
      final CreateUserAccountResponse? createUserAccountResponse,
      final BooleanStatus createUserAccountStatus}) = _$InitialImpl;

  @override
  String? get accountName;
  @override
  CreateUserAccountResponse? get createUserAccountResponse;
  @override
  BooleanStatus get createUserAccountStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
