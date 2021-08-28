import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';

part 'campaign_cubit.freezed.dart';
part 'campaign_state.dart';

class CampaignCubit extends Cubit<CampaignState> {

  final CampaignsFireStoreRepo _campaignsFireStoreRepo;
  StreamSubscription? _campaignSubscription;

  CampaignCubit({required CampaignsFireStoreRepo campaignsFireStoreRepo})
      : _campaignsFireStoreRepo = campaignsFireStoreRepo, super(CampaignState.loadInProgress());

  Future getCampaigns() async{
    try{
      emit(CampaignState.loadInProgress());
      _campaignSubscription =  _campaignsFireStoreRepo.repoGetCampaigns().listen((campaigns) {
        emit(CampaignState.loadSuccess(campaigns));
      });

    }on FirebaseException {
      emit(CampaignState.loadFailure());
    }
  }

  Future updateDonationItemCount(String? id, int? newValue) async{
    _campaignsFireStoreRepo.repoUpdateDonationItemCount(campaignId: id, newValue: newValue);
  }

  Future addParticipant(String? id, String? userId) async {
    _campaignsFireStoreRepo.repoAddParticipant(campaignId: id, userId: userId);
  }

  @override
  Future close() {
    _campaignSubscription?.cancel();
    return super.close();
  }
}
