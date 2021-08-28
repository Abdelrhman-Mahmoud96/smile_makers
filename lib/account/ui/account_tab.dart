import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/account/ui/routes.dart';




/* account tab is to get the current user state from account main and show the correct page */
class AccountTab extends StatelessWidget {

  const AccountTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FlowBuilder<AccountState>(
        state: context.select((AccountBloc accountBloc) => accountBloc.state),
        onGeneratePages: onGenerateAccountViewPages,
      ),
    );
  }
}

