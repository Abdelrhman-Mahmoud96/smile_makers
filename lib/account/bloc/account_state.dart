part of 'account_bloc.dart';

// enum AppStatus{
//   authenticated,
//   unauthenticated
// }

@freezed
class AccountState with _$AccountState {
  const factory AccountState.authenticated(UserModel userModel) = Authenticated;
  const factory AccountState.unauthenticated() = Unauthenticated;
}

