import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/campaign/model/campaign_entity.dart';


class CampaignsFireStoreRepo{

  final _campaignCollection = FirebaseFirestore.instance.collection('campaigns');

  Stream<List<Campaign>> repoGetCampaigns() {
    return _campaignCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Campaign.fromEntity(CampaignEntity.fromSnapshot(doc))).toList();
    });
  }

  Stream<List<Campaign>> userCampaignsList(String currentUserId) {
    return _campaignCollection.where('participants', arrayContains: currentUserId).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Campaign.fromEntity(CampaignEntity.fromSnapshot(doc))).toList();
    });
  }

  Future repoUpdateDonationItemCount({String? campaignId, int? newValue}) async{
    _campaignCollection.doc(campaignId).update({'number_of_items' : newValue})
        .then((_) => print('success'))
        .catchError((error)=> print('Failed with error  $error'));
  }

  Future repoAddParticipant({String? campaignId, String? userId}) async{
    _campaignCollection.doc(campaignId).update({'participants' : FieldValue.arrayUnion([userId])})
    .then((_) => print('success'))
    .catchError((error) => print('Failed with error $error'));
  }

  Future repoAddDonationsID({String? campaignId, String? donationId}) async{
    _campaignCollection.doc(campaignId).update({'donations_id' : FieldValue.arrayUnion([donationId])})
        .then((_) => print('success'))
        .catchError((error) => print('Failed with error $error'));
  }


}