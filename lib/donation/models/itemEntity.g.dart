// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemEntity _$_$_ItemEntityFromJson(Map<String, dynamic> json) {
  return _$_ItemEntity(
    id: json['id'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    imgUrl: json['imgUrl'] as String?,
    taken: json['taken'] as bool?,
    date: json['donation_date'] as String?,
    userId: json['donated_user'] as String?,
    campaignName: json['campaign_name'] as String?,
  );
}

Map<String, dynamic> _$_$_ItemEntityToJson(_$_ItemEntity instance) =>
    <String, dynamic>{
      // 'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imgUrl': instance.imgUrl,
      'taken': instance.taken,
      'donation_date': instance.date,
      'donated_user': instance.userId,
      'campaign_name': instance.campaignName,
    };
