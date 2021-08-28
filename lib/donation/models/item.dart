/* this is the model we are going to use with the app (bloc/UI) */

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smile_makers/donation/models/itemEntity.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item{
  const Item._();

  const factory Item({
    String? id,
    String? name,
    String? description,
    String? imgUrl,
    @Default(false) bool taken,
    String? date,
    String? userId,
    String? campaignName}) = _Item;

  static Item fromEntity(ItemEntity itemEntity){
    return Item(
        id: itemEntity.id,
        name: itemEntity.name,
        description: itemEntity.description,
        imgUrl: itemEntity.imgUrl,
        taken: itemEntity.taken!,
        date: itemEntity.date,
        userId: itemEntity.userId,
        campaignName: itemEntity.campaignName
    );
  }

  ItemEntity toEntity(){
    return ItemEntity(
        id: id,
        name: name,
        description: description,
        imgUrl: imgUrl,
        taken: taken,
        date: date,
        userId: userId,
        campaignName: campaignName
    );
  }

}