import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/design/smile_colors.dart';

class UserCampaignsListView extends StatelessWidget {
  final List<Campaign> _campaigns;

  const UserCampaignsListView({Key? key, required List<Campaign> campaigns})
      : _campaigns = campaigns, super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('you participated in..'),),
        body: GridView.builder(
          padding: EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 60,),
            itemCount: _campaigns.length,
            itemBuilder: (context, index){
              final campaign = _campaigns[index];
              return _userCampaignCard(context, campaign);
            },
        ),
      ),
    );
  }

  Widget _userCampaignCard(BuildContext context, Campaign campaign) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: new Border.all(
                color: SmileColors.smileDarkBlue,
                width: 2,
              ),
            ),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  FadeInImage(
                    placeholder: AssetImage('assets/campaign_image_placeholder.gif'),
                    image: NetworkImage(campaign.image!)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: AutoSizeText(
                        campaign.name!,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: AutoSizeText('Donations so Far : ${campaign.numOfDonatedItems.toString()} of ${campaign.donationTarget.toString()}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
