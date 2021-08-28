
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/campaign/ui/campaign_tab.dart';
import 'package:smile_makers/campaign/ui/campaigns_list_view.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';

class CampaignsMain extends StatelessWidget {

  final AuthRepository _authRepository;
  final CampaignsFireStoreRepo _campaignsFireStoreRepo;
  // final ItemFireStoreRepository _itemFireStoreRepository;

  const CampaignsMain({Key? key, required AuthRepository authRepository, required CampaignsFireStoreRepo campaignsFireStoreRepo})
      : _authRepository = authRepository, _campaignsFireStoreRepo = campaignsFireStoreRepo, super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: _authRepository),
          RepositoryProvider.value(value: _campaignsFireStoreRepo)
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AccountBloc>(
                create: (_) => AccountBloc(authRepository: _authRepository)
            ),
            BlocProvider<CampaignsBloc>(
                create: (_) => CampaignsBloc(campaignsFireStoreRepo: _campaignsFireStoreRepo)..add(LoadCampaigns()))
          ],
          child: CampaignTab(),
        )
    );

  }
}