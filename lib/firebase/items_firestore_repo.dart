import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smile_makers/donation/models/item.dart';
import 'package:smile_makers/donation/models/itemEntity.dart';
import 'package:smile_makers/donation/repository/item_repository.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';

class ItemFireStoreRepository implements ItemRepository{

  final donationsCollection = FirebaseFirestore.instance.collection('donations');
  final String currentUserId = FirebaseAuth.instance.currentUser!.uid.toString();

  @override
  Future<void> addItem(Item item, String campaignId) async {
    donationsCollection.add(item.toEntity().toJson()).then((item) {
      CampaignsFireStoreRepo().repoAddDonationsID(campaignId: campaignId, donationId: item.id);
    } );
  }

  @override
  Future<void> deleteItem(Item item) {
    return donationsCollection.doc(item.id).delete();

  }

  @override
  Stream<List<Item>> items() {
    return donationsCollection.where('donated_user', isEqualTo: currentUserId).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Item.fromEntity(ItemEntity.fromSnapShot(doc))).toList();
    });
  }

  @override
  Future<void> updateItem(Item item) {
    return donationsCollection.doc(item.id).update(item.toEntity().toJson());
  }

}