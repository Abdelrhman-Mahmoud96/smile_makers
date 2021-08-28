import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';

part 'campaigns_event.dart';
part 'campaigns_state.dart';
part 'campaigns_bloc.freezed.dart';

class CampaignsBloc extends Bloc<CampaignsEvent, CampaignsState> {

  final CampaignsFireStoreRepo? _campaignsFireStoreRepo;
  StreamSubscription? _campaignSubscription;

  CampaignsBloc({required CampaignsFireStoreRepo campaignsFireStoreRepo})
      : _campaignsFireStoreRepo = campaignsFireStoreRepo,
        super(CampaignsState.campaignLoadInProgress());

  @override
  Stream<CampaignsState> mapEventToState(CampaignsEvent event) async* {
    if (event is LoadCampaigns) {
      yield* _mapLoadCampaignToState();
    } else if (event is UpdateDonationItemCount) {
      yield* _mapUpdateDonationsCountToState(event);
    } else if (event is AddParticipant) {
      yield* _mapAddParticipantToState(event);
    } else if (event is CampaignsUpdated) {
      yield* _mapCampaignsUpdatedToState(event);
    }else if (event is LoadUserCampaignsList) {
      yield* _mapLoadUserCampaignsToState(event);
    }else if (event is UserCampaignsListUpdated) {
      yield* _mapUserCampaignsUpdatedToState(event);
    }
  }

  Stream<CampaignsState> _mapLoadCampaignToState() async* {
    try {
      _campaignSubscription = _campaignsFireStoreRepo?.repoGetCampaigns()
          .listen((campaigns) =>
          add(CampaignsEvent.campaignsUpdated(campaigns)));
    } on FirebaseException {
      yield CampaignsState.campaignLoadFailure();
    }
  }

  Stream<CampaignsState> _mapCampaignsUpdatedToState(CampaignsUpdated event) async* {
    yield CampaignsState.campaignLoadSuccess(event.campaigns);
  }

  Stream<CampaignsState> _mapUpdateDonationsCountToState(UpdateDonationItemCount event) async* {
    _campaignsFireStoreRepo!.repoUpdateDonationItemCount(campaignId: event.id, newValue: event.newValue);
  }

  Stream<CampaignsState> _mapAddParticipantToState(AddParticipant event) async* {
    _campaignsFireStoreRepo!.repoAddParticipant(campaignId: event.id, userId: event.userId);
  }

  Stream<CampaignsState> _mapLoadUserCampaignsToState(LoadUserCampaignsList event) async*{
    try{
      _campaignSubscription = _campaignsFireStoreRepo!.userCampaignsList(event.userId)
          .listen((campaigns) => add(UserCampaignsListUpdated(campaigns)));

    }on FirebaseException {
      yield CampaignsState.campaignLoadFailure();
    }
  }

  Stream<CampaignsState> _mapUserCampaignsUpdatedToState(UserCampaignsListUpdated event) async*{
    yield CampaignsState.campaignLoadSuccess(event.campaigns);
  }

  @override
  Future<void> close() {
    _campaignSubscription?.cancel();
    // _userCampaignsSubscription?.cancel();
    return super.close();

  }
}