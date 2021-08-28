// repo interface so it can be easily used with different data store (fireStore/ sembast)
import 'package:smile_makers/donation/models/item.dart';

abstract class ItemRepository{
  Future<void> addItem(Item item, String campaignId);

  Future<void> deleteItem(Item item);

  Future<void> updateItem(Item item);

  Stream<List<Item>> items();


}