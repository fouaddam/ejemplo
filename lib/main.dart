import 'package:ejemplo/Firebase/ManageUsersView/RoomChat.dart';
import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

import 'Firebase/Home.dart';
import 'Firebase/ManageUsersView/LoginView.dart';
import 'Firebase/ManageUsersView/OnBoarding.dart';
import 'Firebase/ManageUsersView/RegisterView.dart';
import 'Firebase/ManageUsersView/RoomsChatTile.dart';
import 'Firebase/ManageUsersView/RoomsView.dart';
import 'Splash.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/RoomChat',
      routes: {
        '/Splash':(context)=>Splash(),
        '/Login':(context)=> Login(),
        '/Home':(context)=> Home(),
        '/Register':(context)=>Register(),
        '/OnBoarding':(context)=>OnBoarding(),
        '/Rooms':(context)=>RoomView(),
        '/RoomChat':(context)=>RoomChat(),
        '/RoomsTile':(context)=>RommsChatTile()

      }
    );
  }
}
