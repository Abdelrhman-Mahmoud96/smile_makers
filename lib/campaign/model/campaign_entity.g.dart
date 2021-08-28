// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignEntity _$_$_CampaignEntityFromJson(Map<String, dynamic> json) {
  return _$_CampaignEntity(
    id: json['id'] as String?,
    name: json['name'] as String?,
    image: json['image'] as String?,
    description: json['description'] as String?,
    donationTarget: json['target'] as int?,
    numOfDonatedItems: json['number_of_items'] as int?,
  );
}

Map<String, dynamic> _$_$_CampaignEntityToJson(_$_CampaignEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'target': instance.donationTarget,
      'number_of_items': instance.numOfDonatedItems,
    };
