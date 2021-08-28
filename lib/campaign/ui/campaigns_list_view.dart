import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/campaign/ui/campaign_details.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';

class CampaignsListView extends StatelessWidget {

  const CampaignsListView ({Key? key}) :  super(key: key);

  static Page page() => MaterialPage(child: CampaignsListView ());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BlocBuilder<CampaignsBloc, CampaignsState>(
            builder: (context, state){
              if (state is CampaignLoadInProgress) {
                return Center(child: CircularProgressIndicator());
              }else if(state is CampaignLoadSuccess){
                final campaigns = state.campaigns;
                if (campaigns.isEmpty) {
                  return NoCampaignsView();
                }else{
                  return Column(
                    children: [
                      //banner
                      Image.asset('assets/banner.jpg', fit: BoxFit.fill,),
                      Expanded(
                        child: ListView.builder(
                            itemCount: campaigns.length,
                            itemBuilder: (context, index){
                              final campaign = campaigns[index];
                              return _campaignCard(context,campaign);
                            }
                        ),
                      ),
                    ],
                  );
                }

              }else{
              return Container();
              }
            }
        ),
      ),
    );
  }

  Widget _campaignCard(BuildContext context, Campaign campaign) {
    final _cardRadius = 20.0;
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(_cardRadius), bottomRight: Radius.circular(_cardRadius))),
                semanticContainer: true,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/campaign_item_bg.jpg'),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(_cardRadius), bottomRight: Radius.circular(_cardRadius))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        //campaign title
                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom:8.0,left:8.0,right:8.0),
                          child: Align(alignment: Alignment.topLeft, child: Text(
                            campaign.name!,
                            style: TextStyle(fontWeight: FontWeight.bold, color: SmileColors.smileLightPaige),),),
                        ),
                        // campaign donations meter
                        Padding(
                          padding: const EdgeInsets.symmetric( vertical: 8),
                          child: LinearPercentIndicator(
                            lineHeight: 20,
                            animation: true,
                            animationDuration: 1000,
                            percent: campaign.numOfDonatedItems! / campaign.donationTarget!,
                            center: Text(campaign.numOfDonatedItems!.toString()),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            backgroundColor: SmileColors.smileLightPaige,
                            progressColor: SmileColors.smileYellow,
                            leading: Text(
                              'Donated Items:  ', style: TextStyle(fontSize: 12, color: SmileColors.smileLightPaige),),
                            trailing: Text('  Target:${campaign.donationTarget}',
                              style: TextStyle(fontSize: 12, color: SmileColors.smileLightPaige),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                if(state is Authenticated){
                  MaterialPageRoute route = MaterialPageRoute(builder: (context) => CampaignDetails(
                      campaign: campaign,
                      userId: state.userModel.id!));

                  Navigator.push(context, route);

                }else{
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                        SnackBar(
                            content: Text('pleas log in to participate', style: TextStyle(color: SmileColors.smileDarkBlue)),
                            backgroundColor: SmileColors.smileLightPaige ,
                        )
                    );
                }

              },
            ),
          );


      }

    );
  }
}



class NoCampaignsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/no_campaigns_page.jpg'));
  }
}