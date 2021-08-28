import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:smile_makers/account/model/user.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:very_good_analysis/very_good_analysis.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {

  final AuthRepository _authRepository;
  late final StreamSubscription<UserModel> _userSubscription;

  AccountBloc({required AuthRepository authRepository})
      : _authRepository = authRepository, super(authRepository.currentUser.isNotEmpty ?
      AccountState.authenticated(authRepository.currentUser) : const AccountState.unauthenticated()){
    _userSubscription = _authRepository.user.listen((_onUserChanged));

  }

  void _onUserChanged(UserModel userModel) => add(AccountEvent.userChanged(userModel));

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) async* {
    if (event is UserChanged) {
      yield _mapUserChangedToState(event, state);
    }else if(event is LogOutRequested){
      unawaited(_authRepository.logOut());
    }
  }

  AccountState _mapUserChangedToState(UserChanged event, AccountState state){
    return event.userModel.isNotEmpty ? AccountState.authenticated(event.userModel) :
        const AccountState.unauthenticated();
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }


}
