import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/account/model/user.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';
import 'package:smile_makers/campaign/model/campaign.dart';
import 'package:smile_makers/campaign/ui/user_campaigns_list_view.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';
import 'package:smile_makers/misc/avatar.dart';

class AccountView extends StatelessWidget {

  final UserModel _userModel;

  const AccountView({Key? key, required UserModel userModel})
      : _userModel = userModel,
        super(key: key);

  static Page page(UserModel model) =>
      MaterialPage<void>(child: AccountView(userModel: model));

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CampaignsBloc>(
        create: (_) => CampaignsBloc(campaignsFireStoreRepo: CampaignsFireStoreRepo())..add(LoadUserCampaignsList(_userModel.id!)),
        child: AccountDetails(userModel: _userModel,) ,
    );
  }
}

class AccountDetails extends StatelessWidget {

  final UserModel _userModel;

  const AccountDetails({Key? key, required UserModel userModel}) : _userModel = userModel, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/profile_bg.png'),alignment: Alignment.topCenter)),
      child: Column(
        children: [
          //log out button
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                key: const Key('homePage_logout_iconButton'),
                icon: const Icon(FontAwesomeIcons.signOutAlt, size: 25, color: SmileColors.smileYellow,),
                onPressed: () => context.read<AccountBloc>().add(LogOutRequested()),
              ),
            ),
          ),
          //user photo
          Padding(
            padding: const EdgeInsets.only(top:100),
            child: Avatar(photo: _userModel.imgUrl),
          ),
          const SizedBox(height: 25.0),
          //user name
          Text(
            _userModel.displayName ?? '',
            style: GoogleFonts.ubuntu(
                color: SmileColors.smileDarkBlue,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30.0),
          // number of participated in campaigns
          BlocBuilder<CampaignsBloc, CampaignsState>(
              builder: (context, state){
                if (state is CampaignLoadInProgress) {
                  return _noOfDonationBox('Loading');
                }else if (state is CampaignLoadSuccess){
                  final List<Campaign> _campaigns = state.campaigns;
                  return GestureDetector(
                    child: _noOfDonationBox(_campaigns.length.toString()),
                    onTap: (){
                      if(_campaigns.isNotEmpty){
                        MaterialPageRoute route = MaterialPageRoute(builder: (context) => UserCampaignsListView(campaigns: _campaigns));
                        Navigator.push(context, route);
                      }else{
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                              SnackBar(content: Text('there are no campaigns to show'))
                          );
                      }
                    },
                  );
                }else{
                  return Container();
                }
              }
          ),
        ],
      ),
    );
  }

  Widget _noOfDonationBox(String numberOfDonations){
    return SizedBox(
      width: 300,
      height: 110,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: SmileColors.smileBlue,
          elevation: 10,
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        numberOfDonations,
                        style: GoogleFonts.ubuntu(
                            color: SmileColors.smileLightPaige,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 8, left: 8, bottom: 10),
                        child: Text(
                          'Number of Campaigns You Joined',
                          style: GoogleFonts.ubuntu(
                              color: SmileColors.smileLightPaige,
                              fontSize: 16),
                          maxLines: 3,


                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 16,
                              bottom: 30),
                          child: Icon(FontAwesomeIcons.handHoldingHeart,
                              color: SmileColors.smileYellow)),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
