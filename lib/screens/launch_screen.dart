import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/screens/home_screen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  bool? _connection ;
  ConnectivityResult? _connectionStatus;
  Future? _futureConnection;


  @override
  void initState() {
    _connection = false;
    _futureConnection = initConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
        future: _futureConnection,
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done) {
            if(snapshot.hasData){
              print('launch');
              return HomeScreen(isConnected: _connection!);
            }
            else if (snapshot.hasError){
              print('something wrong with connection data');
            }

          }
          return Center(
            child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    SmileColors.smileYellow)),
          );
        },
      ),
    );

  }

  Future<bool> initConnectivity() async {
    ConnectivityResult connectionStatus;
    try {
      connectionStatus = await Connectivity().checkConnectivity();
      if (_connectionStatus == ConnectivityResult.mobile ||  connectionStatus == ConnectivityResult.wifi) {
        final connectionResult = await InternetAddress.lookup('example.com');
        if (connectionResult.isNotEmpty &&
            connectionResult[0].rawAddress.isNotEmpty) {
          _connection = true;
        }
      }
    } on SocketException catch (_) {
      print('still no internet connection or disconnected');
      _connection = false;
    }
    return _connection!;
  }

}






