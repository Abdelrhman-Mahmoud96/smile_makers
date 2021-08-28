part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent{
  const factory ItemEvent.loadItems() = LoadItems;
  const factory ItemEvent.addItem({required Item item, required String campaignId}) = AddItem;
  const factory ItemEvent.deleteItem(Item item) = DeleteItem;
  const factory ItemEvent.updateItem(Item item) = UpdateItem;
  const factory ItemEvent.itemsUpdated(List<Item> items) = ItemsUpdated;
}
