import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/donation/UI/add_edit_donation.dart';
import 'package:smile_makers/donation/bloc/item_bloc.dart';
import 'package:smile_makers/firebase/items_firestore_repo.dart';
import 'package:smile_makers/firebase/storage_repository.dart';

import 'donation_preview_screen.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class ItemsListView extends StatelessWidget {

  final String _currentUserId;

  const ItemsListView({Key? key, required String currentUserId})
      : _currentUserId = currentUserId, super(key: key);

  static Page page(String id) => MaterialPage(child: ItemsListView(currentUserId: id));

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemBloc>(
      create: (_) => ItemBloc(itemRepository: ItemFireStoreRepository())..add(LoadItems()),
        child: ItemsList(userId: _currentUserId),
    );
  }
}
// the current context
class ItemsList extends StatelessWidget {
  final String userId;
  final StorageRepository _storageRepository = StorageRepository();

  ItemsList({Key? key, required this.userId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: BlocBuilder<ItemBloc, ItemState>(
            builder: (context, state){
              if(state is LoadInProgress){
                return Center(child: CircularProgressIndicator());
              } else if(state is LoadSuccess){
                final items = state.items;
                if (items.isEmpty) {
                  return NoItemsView();
                }else{
                  return ListView.builder(
                    padding: EdgeInsets.all(8),
                      itemCount: items.length ,
                      itemBuilder: (context, index){
                        items.sort((a,b) {
                          final aDate = DateTime.parse(a.date!);
                          final bDate = DateTime.parse(b.date!);
                          return bDate.compareTo(aDate);
                        });
                        final item = items[index];
                        // i can't add more spaces in the date format so i have to manually add this smh.
                        final donationDate = item.date!.split(' ').first;
                        final donationTime = item.date!.split(' ').last;
                        // TODO: 20/08/2021 i need to remove dismissible it was for test only
                        // onDismissed: (direction){
                        //   BlocProvider.of<ItemBloc>(context).add(DeleteItem(item));
                        //   _storageRepository.deleteTemporaryPhoto(item.imgUrl!);
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //       SnackBar(
                        //         content: Text('Donation Removed', style: TextStyle(color: SmileColors.smileDarkBlue),),
                        //         backgroundColor: SmileColors.smileLightPaige,
                        //       )
                        //   );
                        // },
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical:8.0),
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                border: new Border.all(
                                  color: item.taken? SmileColors.smileYellow: SmileColors.smileDarkBlue,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(item.name!, style: TextStyle(color: SmileColors.smileDarkBlue, fontSize: 16),),
                                        SizedBox(height: 4,),
                                        Text(donationDate+'  '+donationTime, style: TextStyle(color: SmileColors.smileBlue, fontSize: 12)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('approved: ', style: TextStyle(color: item.taken? SmileColors.smileYellow: SmileColors.smileDarkBlue,)),
                                        item.taken ? Icon(FontAwesomeIcons.checkCircle, color: SmileColors.smileDarkBlue,)
                                            : Icon(FontAwesomeIcons.circle, color: SmileColors.smileDarkBlue,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // for update/ edit the donation
                            onTap: () async{
                              if (item.taken != true) {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_){
                                      return AddEditDonation(
                                        item: item,
                                        isEditing: true,
                                        onSaveCallback: (name, description, imageUrl, date){
                                          BlocProvider.of<ItemBloc>(context).add(UpdateItem(item.copyWith(
                                              name: name,
                                              description: description,
                                              imgUrl: imageUrl,
                                              userId: userId,
                                              date: date
                                          )));
                                        },
                                      );
                                    })
                                );
                              }
                              else{
                               showDialog(context: context, builder: (context) => DonationPreviewDialog().dialog(context, item));
                              }
                            },
                          ),
                    );
                      }
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



}

class NoItemsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/no_donations_page.jpg'));
  }
}


