import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/account/ui/account_tab.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';

class AccountMain extends StatelessWidget {

  final AuthRepository _authRepository;
  final CampaignsFireStoreRepo _campaignsFireStoreRepo;


  const AccountMain({Key? key, required AuthRepository authRepository, required CampaignsFireStoreRepo campaignsFireStoreRepo})
      : _authRepository = authRepository, _campaignsFireStoreRepo = campaignsFireStoreRepo, super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
          create:(_) => AccountBloc(authRepository: _authRepository),
          child: const AccountTab())
    );

  }

}


