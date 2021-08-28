part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.copyWith({
    Email? email,
    Password? password,
    FormzStatus? status,
    String? errorMessage}) = CopyWith;
}

