import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/donation/models/item.dart';
import 'package:smile_makers/firebase/storage_repository.dart';
import 'package:smile_makers/misc/image_compressor.dart';

typedef OnSaveCallback = Function(
    String name,
    String description,
    String imageUrl,
    String date);

class AddEditDonation extends StatefulWidget {
  final bool isEditing;
  final OnSaveCallback onSaveCallback;
  final Item? item;
  final String? campaignName;

  const AddEditDonation({
    Key? key,
    required this.isEditing,
    this.item,
    this.campaignName,
    required this.onSaveCallback}) : super(key: key);

  @override
  _AddEditDonationState createState() => _AddEditDonationState();
}

class _AddEditDonationState extends State<AddEditDonation> {

  // we use global key to get the current state of textFormsField we are using
  static final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  StorageRepository _storageRepository = StorageRepository();

  bool get isEditing => widget.isEditing;

  String? _photo ;
  String? _name ;
  String? _description ;

  @override
  Widget build(BuildContext context) {

    return WillPopScope(    // Form Widget contains this as a attribute too but we have an image picker that we cant add to form and validate it like other form fields.
      onWillPop: _onBackPressed,
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/add_edit_bg.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth
              )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(isEditing? 'Edit Donation' : 'Add Donation')
            ),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  // donation info
                  Padding(
                    padding: const EdgeInsets.only(top: 155),
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
                            padding: const EdgeInsets.only(top: 100, left:16, right:16  ),
                            child: Form(
                                key: _formStateKey,
                                child: Column(
                                  children: [
                                    // donation name
                                    TextFormField(
                                      initialValue: isEditing? widget.item!.name: '',
                                      autofocus: !isEditing,
                                      decoration: InputDecoration(
                                          hintText: 'your donation title'
                                      ),
                                      validator: (value){
                                        return value!.trim().isEmpty? 'please enter donation title': null;
                                      },
                                      onSaved: (value) => _name = value!,
                                    ),
                                    const SizedBox(height: 16.0),
                                    //  donation description
                                    TextFormField(
                                      maxLines: 6,
                                      initialValue: isEditing? widget.item!.description: '',
                                      autofocus: !isEditing,
                                      decoration: InputDecoration(
                                          hintText: 'briefly describe your donation'
                                      ),
                                      validator: (value){
                                        return value!.trim().isEmpty ? 'please describe it' : null;
                                      },
                                      onSaved: (value) => _description = value!,
                                    ),
                                    // add/edit button
                                    Padding(
                                      padding: const EdgeInsets.only(top:32, right:8, left:8),
                                      child: ElevatedButton(
                                          key: const Key('addEditDonation_save_elevatedButton'),
                                          child: Text(isEditing? 'Save Edit': 'Donate', style: TextStyle(color: SmileColors.smileBlue)),
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(250,50),
                                            primary: SmileColors.smileYellow,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                          ),
                                          onPressed: () {
                                            if (isEditing) {
                                              if (_formStateKey.currentState!.validate()) {
                                                if (_photo == null) {
                                                  _formStateKey.currentState!.save();
                                                  widget.onSaveCallback(_name!, _description!, widget.item!.imgUrl!, _getCurrentDate());
                                                } else {
                                                  _formStateKey.currentState!.save();
                                                  widget.onSaveCallback(_name!, _description!, _photo!, _getCurrentDate());
                                                }
                                                Navigator.pop(context);

                                              }else {
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBar(content: Text('you forgot to add info and/or photo for the donation')));
                                              }

                                            }
                                            // adding donation so there is no item's photo
                                            else {
                                              if (_formStateKey.currentState!.validate() &&  _photo != null) {
                                                _formStateKey.currentState!.save();
                                                widget.onSaveCallback(_name!, _description!, _photo!, _getCurrentDate());
                                                Navigator.pop(context);

                                              } else {
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBar(content: Text('you forgot to add info and/or photo for the donation')));
                                              }
                                            }
                                          }),
                                    )
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // donation photo
                      Expanded(child: _imagePicker()),
                      // campaign title
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(bottom:80.0, left:4),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText((isEditing ? widget.item!.campaignName: widget.campaignName)!,
                              style: TextStyle(color: SmileColors.smileYellow, fontWeight: FontWeight.bold, fontSize: 28),
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
            ),
          ),
        ),
      ),
    );
  }

  Widget _imagePicker(){
    return Stack(
      children: [
        // image view
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child:ClipRRect(
                child: (() {
                  if(isEditing){
                   return Container(
                     decoration: BoxDecoration(
                       color: SmileColors.smileDarkBlue,
                       shape: BoxShape.rectangle,
                       border: new Border.all(
                         color: SmileColors.smileLightPaige,
                         width: 2.0,
                       ),
                     ),
                     child: FadeInImage(
                          width: 150,
                          height: 200,
                          placeholder: AssetImage('assets/no_image_item_placeholder.jpg'),
                          image: _photo != null ? NetworkImage(_photo!): NetworkImage(widget.item!.imgUrl!) as ImageProvider
                      ),
                   );
                  }else{
                    return Container(
                      decoration: BoxDecoration(
                        color: SmileColors.smileDarkBlue,
                        shape: BoxShape.rectangle,
                        border: new Border.all(
                          color: SmileColors.smileLightPaige,
                          width: 2.0,
                        ),
                      ),
                      child: FadeInImage(
                          width: 150,
                          height: 200,
                          placeholder: AssetImage('assets/item_image_placeholder.gif'),
                          image: _photo != null ? NetworkImage(_photo!): AssetImage('assets/no_image_item_placeholder.jpg') as ImageProvider
                      ),
                    );
                  }

                }())
            ),),
        ),
        //the image pick button
        Align(
            alignment: Alignment.bottomLeft,
            child: Padding(padding: EdgeInsets.only(top: 80),
                child: Padding(padding: EdgeInsets.only(top: 110, left: 64),
                  child: FloatingActionButton(
                      backgroundColor: SmileColors.smileBlue ,
                      child: Icon(Icons.camera_alt, color: SmileColors.smileYellow,) ,
                      onPressed: isEditing ? updateImage : getImage
                  ),)
            )
        )
      ],
    );
  }

  Future<void> getImage() async {
    final imageCompressor = ImageCompressor();
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    final compressedImage = await imageCompressor.compressFile(File(pickedFile!.path));
    _photo = await _storageRepository.uploadDonationPhoto(File(compressedImage.path));


    setState(() {
      // _photo = storageUrl;
    });
  }

  Future<void> updateImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    _storageRepository.deleteTemporaryPhoto(widget.item!.imgUrl!);
    String storageUrl = await _storageRepository.uploadDonationPhoto(File(pickedFile!.path));

    setState(() {
      _photo = storageUrl;
    });
  }

  String _getCurrentDate(){
    final DateTime dateNow = DateTime.now();
    final DateFormat dateFormat = DateFormat('yyyy-MM-dd kk:mm:ss');
    final String formattedDate = dateFormat.format(dateNow);
    return formattedDate;
  }

  Future<bool> _onBackPressed() async {
    return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: SmileColors.smileLightPaige,

          title: Column(children: [Icon(FontAwesomeIcons.exclamationTriangle,color: SmileColors.smileYellow, size: 30,),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text('Cancel', style: TextStyle(color: SmileColors.smileDarkBlue),),
            ),],),

          content: Text(isEditing? 'you did\'t finish editing your donation are you sure ?': 'you didn\'t finish your donation are you sure ?'
            , style: TextStyle(color: Colors.grey[600]),),

          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No', style: TextStyle(color: SmileColors.smileBlue, fontSize: 16))),
            TextButton(
                    onPressed: () {
                      if (_photo != null) {
                        _storageRepository.deleteTemporaryPhoto(_photo!);
                      }
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Yes', style: TextStyle(color: SmileColors.smileBlue, fontSize: 16)))
          ],
        )
    ))?? false; // if we clicked outside of the dialog, showDialog will return null, in this case we will return false too
  }
}



