import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/donation/models/item.dart';

class DonationPreviewDialog {

  Widget dialog(BuildContext context, Item item) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/add_edit_bg.jpg'),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth
            )
        ),
        child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: SmileColors.smileDarkBlue
                  ),
                  width: double.infinity,
                  height: 50,
                  child: Align(alignment: Alignment.center, child: Text('Preview Only', style: TextStyle(color: SmileColors.smileLightPaige),),),
                ),
                Stack(
                  children: [
                    // donation info
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Container(
                        decoration: BoxDecoration(
                          color: SmileColors.smileLightPaige,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                        ),
                        child: Column(
                          children: [
                            //info form
                            Padding(
                              padding: const EdgeInsets.only(top: 25,),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0, bottom: 4, left: 16, right: 16),
                                    child: Align(
                                      child: Text('Donation Title:', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  // donation name
                                  Padding(
                                    padding: const EdgeInsets.only(top:4.0, bottom: 18, left: 18, right: 18),
                                    child: Align(
                                        child: Text(item.name!, style: TextStyle(fontSize: 15)),
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0, bottom: 4, left: 16, right: 16),
                                    child: Align(
                                      child: Text('Donation Description:', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),),
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  // donation description
                                  Padding(
                                    padding: const EdgeInsets.only(top:4.0, bottom: 18, left: 18, right: 18),
                                    child: Align(
                                      child: Text(item.description!, style: TextStyle(fontSize: 15)),
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  // ok button
                                  TextButton(
                                      key: const Key('addEditDonation_save_elevatedButton'),
                                      child: Text('OK', style: TextStyle(color: SmileColors.smileBlue)),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(double.infinity,50),
                                        primary: SmileColors.smileYellow,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      })
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // donation photo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _imageView(item)),
                        // campaign title
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(bottom:40.0,right: 12),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: AutoSizeText((item.campaignName)!,
                                style: TextStyle(color: SmileColors.smileYellow, fontWeight: FontWeight.bold, fontSize: 24),
                                // overflow: TextOverflow.visible,
                                maxLines: 3,
                              )
                          ),
                        ),)
                      ],
                    ),
                    //  campaign title

                  ],
                ),
              ],
            ),
          ),
      ),
    );

  }

 Widget _imageView(Item item) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topLeft,
        child:ClipRRect(
            child: Container(
                  decoration: BoxDecoration(
                    color: SmileColors.smileDarkBlue,
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: SmileColors.smileLightPaige,
                      width: 2.0,
                    ),
                  ),
                  child: FadeInImage(
                      width: 100,
                      height: 150,
                      placeholder: AssetImage('assets/item_image_placeholder.gif'),
                      image: NetworkImage(item.imgUrl!)
                  ),
                )
        ),),
    );
  }
}
