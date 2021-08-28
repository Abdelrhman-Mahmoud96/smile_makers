import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smile_makers/account/app_bloc_observer.dart';
import 'package:smile_makers/account/ui/account_main.dart';
import 'package:smile_makers/campaign/ui/campaign_main.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/donation/UI/items_main.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';
import 'package:smile_makers/firebase/user_firestore_repo.dart';


class HomeScreen extends StatefulWidget {

  final bool isConnected;
  const HomeScreen({required this.isConnected});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isConnected = false;
  int _selectedIndex = 0;
  final AuthRepository _authRepository = AuthRepository();
  final CampaignsFireStoreRepo _campaignsFireStoreRepo = CampaignsFireStoreRepo();

  List<Widget> tabs = [];

  AndroidNotificationChannel? _channel;

  FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;



  @override
  void initState() {

    _channel = AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        'This channel is used for important notifications.', // description
        importance: Importance.high,
        playSound: true);

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    _firebaseMessagingOptions();
    _createAndroidNotificationChannel();

    // handling foreground notification
    _firebaseMessagingForegroundHandler();

    isConnected =  (widget.isConnected) ? true : false;

    _initTabs(_authRepository, _campaignsFireStoreRepo);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: SmileColors.smileDarkBlue,
        selectedItemColor: SmileColors.smileYellow,
        selectedIconTheme: IconThemeData(color: SmileColors.smileYellow, size: 30),
        unselectedIconTheme: IconThemeData(color: SmileColors.smilePaige, size: 20),
        unselectedItemColor: SmileColors.smilePaige,
        selectedFontSize: 14,

        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 12,
        // showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Campaigns'
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.handHoldingHeart),
              label: 'Donations'
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Account'
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Container(
          child:(isConnected) ? _mainWidget(context, _selectedIndex) : Align(alignment: Alignment.center, child: _noInternet(context)))
    );



  }

  Widget _mainWidget(BuildContext context, int index){
    return tabs.elementAt(index);
  }

  Widget _noInternet(BuildContext context){
    return Container(
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/no_internet.png', width: 100, height: 100,),
              Text('No internet Connection',style: TextStyle(color: SmileColors.smileDarkBlue),),
              Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: SmileColors.smileYellow,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text('Try Again',style: TextStyle(color: SmileColors.smileDarkBlue)) ,
                  onPressed: () => _retryConnection())
            ],
          ),
        )

    );
  }

  Future _retryConnection() async {

    isConnected = await _checkConnection();

    if (isConnected) {
      setState(() {
        isConnected = true;
      });
    }
    else {
      setState(() {
        isConnected = false;

      });
    }
  }

  Future<bool> _checkConnection() async{
    bool result = false;
    try {
      final connectionResult = await InternetAddress.lookup('google.com');
      if (connectionResult.isNotEmpty &&
          connectionResult[0].rawAddress.isNotEmpty) {
        result = true;
      }

    } on SocketException catch (_) {
      print('still no internet connection or disconnected');
    }
    return result;
  }

  // void _showSnakeBar(BuildContext context){
  //   final scaffold = Scaffold.of(context);
  //   scaffold.showSnackBar(
  //     SnackBar(
  //       content: const Text('No Internet Connection'),
  //     ),
  //   );
  //
  // }

  Future _initTabs(AuthRepository authRepository, CampaignsFireStoreRepo campaignsFireStoreRepo) async{
    tabs = [
      CampaignsMain(authRepository: authRepository, campaignsFireStoreRepo: campaignsFireStoreRepo),
      ItemsMain(authRepository: authRepository),
      AccountMain(authRepository: authRepository, campaignsFireStoreRepo: campaignsFireStoreRepo)
    ];
    Bloc.observer = AppBlocObserver();
    await authRepository.user.first;
  }

  Future<void> _firebaseMessagingOptions() async{
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> _createAndroidNotificationChannel() async{
    await _flutterLocalNotificationsPlugin
        ?.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel!);
  }

  void _firebaseMessagingForegroundHandler() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification!;
      _flutterLocalNotificationsPlugin?.show(
           notification.hashCode,
           notification.title,
           notification.body,
           NotificationDetails(
             android: AndroidNotificationDetails(
               _channel!.id,
               _channel!.name,
               _channel!.description,
               color: SmileColors.smileBlue,
               playSound: true,
               icon: "@drawable/icon",
             )
           ));


    });

  }
}


