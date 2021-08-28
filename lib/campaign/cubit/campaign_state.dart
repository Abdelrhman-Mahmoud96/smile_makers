part of 'campaign_cubit.dart';

@freezed
class CampaignState with _$CampaignState {
  const factory CampaignState.loadInProgress() = LoadInProgress;
  const factory CampaignState.loadSuccess(final List<Campaign> campaigns) = LoadSuccess;
  const factory CampaignState.loadFailure() = LoadFailure;
}
