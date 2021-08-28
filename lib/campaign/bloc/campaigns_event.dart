part of 'campaigns_bloc.dart';

@freezed
class CampaignsEvent with _$CampaignsEvent{
  const factory CampaignsEvent.loadCampaign() = LoadCampaigns;
  const factory CampaignsEvent.campaignsUpdated(List<Campaign> campaigns) = CampaignsUpdated;
  const factory CampaignsEvent.updateDonationItemCount(String? id, int? newValue) = UpdateDonationItemCount;
  const factory CampaignsEvent.addParticipant(String? id, String? userId) = AddParticipant;
  const factory CampaignsEvent.loadUserCampaignsList(String userId) = LoadUserCampaignsList;
  const factory CampaignsEvent.userCampaignsListUpdated(List<Campaign> campaigns) = UserCampaignsListUpdated;

}