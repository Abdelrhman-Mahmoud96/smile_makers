import 'package:flutter/material.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/account/model/user.dart';
import 'package:smile_makers/account/ui/account_view.dart';
import 'package:smile_makers/login/login_page.dart';

List<Page> onGenerateAccountViewPages(AccountState state, List<Page<dynamic>> pages) {
  return state.when(
      authenticated: (UserModel userModel) => [AccountView.page(userModel)],
      unauthenticated:() => [LoginPage.page()]);
}
