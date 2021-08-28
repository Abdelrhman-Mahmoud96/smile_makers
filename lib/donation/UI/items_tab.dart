import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/donation/UI/routes.dart';
import 'package:provider/provider.dart';

class ItemsTab extends StatelessWidget {

  const ItemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlowBuilder<AccountState>(
        state: context.select((AccountBloc accountBloc) => accountBloc.state),
        onGeneratePages: onGenerateItemsViewPages,
      ),
    );
  }
}

