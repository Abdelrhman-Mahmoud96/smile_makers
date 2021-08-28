import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/donation/UI/items_tab.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';

class ItemsMain extends StatelessWidget {

  final AuthRepository _authRepository;
  // final ItemFireStoreRepository _itemFireStoreRepository;

  const ItemsMain({Key? key, required AuthRepository authRepository})
      : _authRepository = authRepository, super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
        value: _authRepository,
        child: BlocProvider<AccountBloc>(
            create: (_) => AccountBloc(authRepository: _authRepository),
            child: const ItemsTab(),
        ) ,
    );

  }
}
