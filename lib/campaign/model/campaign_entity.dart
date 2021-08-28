import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_entity.freezed.dart';
part 'campaign_entity.g.dart';

@freezed
class CampaignEntity with _$CampaignEntity{

  const CampaignEntity._();

  const factory CampaignEntity({
      String? id,
      String? name,
      String? image,
      String? description,
      @JsonKey(name: 'target') int? donationTarget,
      @JsonKey(name: 'number_of_items') int? numOfDonatedItems}) = _CampaignEntity;

  factory CampaignEntity.fromJson(Map<String, dynamic> json) => _$CampaignEntityFromJson(json);

  static CampaignEntity fromSnapshot(DocumentSnapshot snapshot){
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return CampaignEntity(
        id: snapshot.id.toString(),
        name: data['name'],
        image: data['image'],
        description: data['description'],
        donationTarget: data['target'],
        numOfDonatedItems: data['number_of_items']);
  }
}