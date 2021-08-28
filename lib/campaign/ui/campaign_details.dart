import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/donation/UI/add_edit_donation.dart';
import 'package:smile_makers/donation/bloc/item_bloc.dart';
import 'package:smile_makers/donation/models/item.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';
import 'package:smile_makers/firebase/items_firestore_repo.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';

class CampaignDetails extends StatelessWidget {

  final Campaign _campaign;
  final String _currentUserId;

  const CampaignDetails({Key? key, required Campaign campaign, required String userId})
      : _campaign = campaign, _currentUserId = userId, super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider<ItemBloc>(create: (_) => ItemBloc(itemRepository: ItemFireStoreRepository())),
      BlocProvider<CampaignsBloc>(create: (_) => CampaignsBloc(campaignsFireStoreRepo: CampaignsFireStoreRepo()))

      ],
      child: Details(campaign: _campaign, userId: _currentUserId)
    );
  }
}
class Details extends StatelessWidget {
  final Campaign _campaign;
  final String _userId;

  const Details({Key? key,required Campaign campaign, required String userId}) :
      _campaign = campaign, _userId = userId, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              //campaign image
              Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                    child: FadeInImage(
                      placeholder: AssetImage('assets/campaign_image_placeholder.gif'),
                      image: NetworkImage(_campaign.image!),
                    ),
                  )
              ),
              //campaign info
              Padding(
                padding: const EdgeInsets.only(top: 250, right: 15, left:15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      //campaign title
                      Padding(
                        padding: const EdgeInsets.only(top:16.0, bottom:8 , left: 16, right: 16 ),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(_campaign.name!,
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 26),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16.0),
                        child: Divider(color: SmileColors.smileDarkBlue,),
                      ),
                      // campaign description
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: 150,
                          // decoration: BoxDecoration(
                          //   shape: BoxShape.rectangle,
                          //   border: Border.all(
                          //     color: SmileColors.smileDarkBlue,
                          //     width: 2,
                          //   ),
                          //    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                          // ),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Scrollbar(
                                isAlwaysShown: true,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text(_campaign.description!,
                                    style: TextStyle(fontStyle: FontStyle.italic,
                                        fontSize: 16),
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16.0),
                        child: Divider(color: SmileColors.smileDarkBlue,),
                      ),
                      // donate item button
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 24),
                              child: ElevatedButton(
                                child: const Text(
                                  'DONATE ITEM',
                                  style: TextStyle(color: SmileColors.smileBlue),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(250, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  primary: SmileColors.smileYellow,

                                ),
                                onPressed: () {
                                  if (_campaign.numOfDonatedItems! < _campaign.donationTarget!) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (_){
                                          return AddEditDonation(
                                            campaignName: _campaign.name,
                                            isEditing: false,
                                            onSaveCallback: (name, description, imageUrl, date){
                                              final int newValue = _campaign.numOfDonatedItems! + 1;
                                              // context.read<CampaignCubit>().updateDonationItemCount(_campaign.id, newValue);
                                              // TODO: 29/07/2021 handling if the user deleted/edited his donation

                                              _showConfirmationDialog(context);

                                              BlocProvider.of<CampaignsBloc>(context).add(UpdateDonationItemCount(_campaign.id, newValue));

                                              BlocProvider.of<CampaignsBloc>(context).add(AddParticipant(_campaign.id, _userId));

                                              BlocProvider.of<ItemBloc>(context).add(AddItem(
                                                  item: Item(
                                                      name: name,
                                                      description: description,
                                                      imgUrl: imageUrl,
                                                      userId: _userId,
                                                      date: date,
                                                      campaignName: _campaign.name),
                                                  campaignId: _campaign.id!)
                                              );
                                            },
                                          );
                                        })
                                    );
                                  }
                                  else{
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('the campaign had reached it\'s donation target',
                                              style: TextStyle(color: SmileColors.smileDarkBlue),),
                                            backgroundColor: SmileColors.smileLightPaige ,
                                        )
                                    );
                                  }
                                },
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    final checkGIF = AssetImage('assets/check.gif');
    showDialog(
        context: context,
        builder: (context){
          return Stack(
            children: [
              AlertDialog(
                backgroundColor: SmileColors.smileLightPaige,
                title: Text('Your Donation Added Successfully!', style: TextStyle(color: SmileColors.smileDarkBlue),),
                content: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: SmileColors.smileDarkBlue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  ),
                  onPressed: () {
                    // we need this to fix the gif that loop once, only showing for the first time issue,
                    // because the app will return a cached version of it,
                    // and since it loop once it will not run again,
                    // so for that we need to dispose the cached one and load it again whenever we need it.
                    checkGIF.evict();
                    Navigator.pop(context);
                    },
                  child: Text('OK', style: TextStyle(color: SmileColors.smileLightPaige),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Image.asset(checkGIF.assetName),
              ),
            ],
          );
        }
    );
  }

}


