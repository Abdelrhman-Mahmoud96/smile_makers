part of 'campaigns_bloc.dart';

@freezed
class CampaignsState with _$CampaignsState {
  const factory CampaignsState.campaignLoadInProgress() = CampaignLoadInProgress;
  const factory CampaignsState.campaignLoadSuccess(final List<Campaign> campaigns) = CampaignLoadSuccess;
  const factory CampaignsState.campaignLoadFailure() = CampaignLoadFailure;

}