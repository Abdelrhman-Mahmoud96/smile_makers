
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smile_makers/campaign/model/campaign_entity.dart';

part 'campaign.freezed.dart';


@freezed
class Campaign with _$Campaign{

  const Campaign._();

  const factory Campaign({
    String? id,
    String? name,
    String? image,
    String? description,
    int? donationTarget,
    int? numOfDonatedItems}) = _Campaign;

  static Campaign fromEntity(CampaignEntity campaignEntity){
    return Campaign(
      id: campaignEntity.id,
      name: campaignEntity.name,
      image: campaignEntity.image,
      description: campaignEntity.description,
      donationTarget: campaignEntity.donationTarget,
      numOfDonatedItems: campaignEntity.numOfDonatedItems
    );
  }

   CampaignEntity toEntity(Campaign campaign){
    return CampaignEntity(
        id: id,
        name: name,
        image: image,
        description: description,
        donationTarget: donationTarget,
        numOfDonatedItems: numOfDonatedItems);
  }


}