// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  CopyWith copyWith(
      {Name? name,
      Email? email,
      Password? password,
      ConfirmedPassword? confirmedPassword,
      FormzStatus? status,
      String? errorMessage}) {
    return CopyWith(
      name: name,
      email: email,
      password: password,
      confirmedPassword: confirmedPassword,
      status: status,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  Name? get name => throw _privateConstructorUsedError;
  Email? get email => throw _privateConstructorUsedError;
  Password? get password => throw _privateConstructorUsedError;
  ConfirmedPassword? get confirmedPassword =>
      throw _privateConstructorUsedError;
  FormzStatus? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Name? name,
            Email? email,
            Password? password,
            ConfirmedPassword? confirmedPassword,
            FormzStatus? status,
            String? errorMessage)
        copyWith,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Name? name,
            Email? email,
            Password? password,
            ConfirmedPassword? confirmedPassword,
            FormzStatus? status,
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
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {Name? name,
      Email? email,
      Password? password,
      ConfirmedPassword? confirmedPassword,
      FormzStatus? status,
      String? errorMessage});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword?,
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
abstract class $CopyWithCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $CopyWithCopyWith(CopyWith value, $Res Function(CopyWith) then) =
      _$CopyWithCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name? name,
      Email? email,
      Password? password,
      ConfirmedPassword? confirmedPassword,
      FormzStatus? status,
      String? errorMessage});
}

/// @nodoc
class _$CopyWithCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $CopyWithCopyWith<$Res> {
  _$CopyWithCopyWithImpl(CopyWith _value, $Res Function(CopyWith) _then)
      : super(_value, (v) => _then(v as CopyWith));

  @override
  CopyWith get _value => super._value as CopyWith;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmedPassword = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(CopyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword?,
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
  const _$CopyWith(
      {this.name,
      this.email,
      this.password,
      this.confirmedPassword,
      this.status,
      this.errorMessage});

  @override
  final Name? name;
  @override
  final Email? email;
  @override
  final Password? password;
  @override
  final ConfirmedPassword? confirmedPassword;
  @override
  final FormzStatus? status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignUpState.copyWith(name: $name, email: $email, password: $password, confirmedPassword: $confirmedPassword, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CopyWith &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmedPassword, confirmedPassword)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmedPassword) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $CopyWithCopyWith<CopyWith> get copyWith =>
      _$CopyWithCopyWithImpl<CopyWith>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Name? name,
            Email? email,
            Password? password,
            ConfirmedPassword? confirmedPassword,
            FormzStatus? status,
            String? errorMessage)
        copyWith,
  }) {
    return copyWith(
        name, email, password, confirmedPassword, status, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Name? name,
            Email? email,
            Password? password,
            ConfirmedPassword? confirmedPassword,
            FormzStatus? status,
            String? errorMessage)?
        copyWith,
    required TResult orElse(),
  }) {
    if (copyWith != null) {
      return copyWith(
          name, email, password, confirmedPassword, status, errorMessage);
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

abstract class CopyWith implements SignUpState {
  const factory CopyWith(
      {Name? name,
      Email? email,
      Password? password,
      ConfirmedPassword? confirmedPassword,
      FormzStatus? status,
      String? errorMessage}) = _$CopyWith;

  @override
  Name? get name => throw _privateConstructorUsedError;
  @override
  Email? get email => throw _privateConstructorUsedError;
  @override
  Password? get password => throw _privateConstructorUsedError;
  @override
  ConfirmedPassword? get confirmedPassword =>
      throw _privateConstructorUsedError;
  @override
  FormzStatus? get status => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CopyWithCopyWith<CopyWith> get copyWith =>
      throw _privateConstructorUsedError;
}
