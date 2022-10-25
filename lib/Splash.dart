
import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

import 'Firebase/costumViews/textField.dart';

class Splash extends StatefulWidget{
   Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  FireBaseAdmin fireBaseAdmin =FireBaseAdmin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fireBaseAdmin.PerfilExist(context);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body:Center(
        child: Column(
          children: [
            Text("Soy Splash")
          ],
        ),
      )

    );
  }
}