/* the entity model to use with the fire store  */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itemEntity.freezed.dart';
part 'itemEntity.g.dart';

@freezed
class ItemEntity with _$ItemEntity{
  const ItemEntity._();

  const factory ItemEntity({
    String? id,
    String? name,
    String? description,
    String? imgUrl,
    bool? taken,
    @JsonKey(name: 'donation_date') String? date,
    @JsonKey(name: 'donated_user') String? userId,
    @JsonKey(name: 'campaign_name') String? campaignName}) = _ItemEntity;

  factory ItemEntity.fromJson(Map<String, dynamic> json) => _$ItemEntityFromJson(json);

  static ItemEntity fromSnapShot(DocumentSnapshot snapshot){
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return ItemEntity(
         id: snapshot.id.toString(),
         name: data['name'],
         description: data['description'],
         imgUrl: data['imgUrl'],
         taken: data['taken'],
         date: data['donation_date'],
         userId: data['donated_user'],
         campaignName: data['campaign_name']
    );
  }
}