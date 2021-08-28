part of 'sign_up_cubit.dart';

enum ConfirmPasswordValidator{invalid}

@freezed
class SignUpState with _$SignUpState{
  const factory SignUpState.copyWith({
    Name? name,
    Email? email,
    Password? password,
    ConfirmedPassword? confirmedPassword,
    FormzStatus? status,
    String? errorMessage}) = CopyWith;
}

