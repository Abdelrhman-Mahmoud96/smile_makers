part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.logOutRequested() = LogOutRequested;
  const factory AccountEvent.userChanged(UserModel userModel) = UserChanged;
}
