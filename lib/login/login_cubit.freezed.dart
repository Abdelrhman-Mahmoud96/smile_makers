// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  CopyWith copyWith(
      {Email? email,
      Password? password,
      FormzStatus? status,
      String? errorMessage}) {
    return CopyWith(
      email: email,
      password: password,
      status: status,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Email? get email => throw _privateConstructorUsedError;
  Password? get password => throw _privateConstructorUsedError;
  FormzStatus? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email, Password? password,
            FormzStatus? status, String? errorMessage)
        copyWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email, Password? password, FormzStatus? status,
            String? errorMessage)?
        copyWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CopyWith value) copyWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CopyWith value)? copyWith,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Email? email,
      Password? password,
      FormzStatus? status,
      String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $CopyWithCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $CopyWithCopyWith(CopyWith value, $Res Function(CopyWith) then) =
      _$CopyWithCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email? email,
      Password? password,
      FormzStatus? status,
      String? errorMessage});
}

/// @nodoc
class _$CopyWithCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $CopyWithCopyWith<$Res> {
  _$CopyWithCopyWithImpl(CopyWith _value, $Res Function(CopyWith) _then)
      : super(_value, (v) => _then(v as CopyWith));

  @override
  CopyWith get _value => super._value as CopyWith;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(CopyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CopyWith implements CopyWith {
  const _$CopyWith({this.email, this.password, this.status, this.errorMessage});

  @override
  final Email? email;
  @override
  final Password? password;
  @override
  final FormzStatus? status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState.copyWith(email: $email, password: $password, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyWith &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $CopyWithCopyWith<CopyWith> get copyWith =>
      _$CopyWithCopyWithImpl<CopyWith>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Email? email, Password? password,
            FormzStatus? status, String? errorMessage)
        copyWith,
  }) {
    return copyWith(email, password, status, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Email? email, Password? password, FormzStatus? status,
            String? errorMessage)?
        copyWith,
    required TResult orElse(),
  }) {
    if (copyWith != null) {
      return copyWith(email, password, status, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CopyWith value) copyWith,
  }) {
    return copyWith(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CopyWith value)? copyWith,
    required TResult orElse(),
  }) {
    if (copyWith != null) {
      return copyWith(this);
    }
    return orElse();
  }
}

abstract class CopyWith implements LoginState {
  const factory CopyWith(
      {Email? email,
      Password? password,
      FormzStatus? status,
      String? errorMessage}) = _$CopyWith;

  @override
  Email? get email => throw _privateConstructorUsedError;
  @override
  Password? get password => throw _privateConstructorUsedError;
  @override
  FormzStatus? get status => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CopyWithCopyWith<CopyWith> get copyWith =>
      throw _privateConstructorUsedError;
}
