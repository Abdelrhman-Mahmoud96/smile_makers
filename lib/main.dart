import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/design/smile_theme.dart';
import 'package:smile_makers/screens/launch_screen.dart';

// TODO: 10/08/2021 i have to decide if i should keep firebase messaging methods here or at the home screen file
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // handling background notification
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: SmileColors.smileDarkBlue));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smile Makers',
      theme: SmileTheme.mainTheme,
      home: LaunchScreen(),
    );
  }
}

Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async{
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}

