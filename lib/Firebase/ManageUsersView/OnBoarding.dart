


import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:flutter/material.dart';
import '../costumViews/textField.dart';

    RFTextFiled email=RFTextFiled(title: 'email',);
    RFTextFiled password=RFTextFiled(title: 'passwor',password: true);
    RFTextFiled password2=RFTextFiled(title: 'repite password',password: true);

    FireBaseAdmin fireBaseAdmin=FireBaseAdmin();



    class OnBoarding extends StatelessWidget{
      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return  Scaffold(
            body:Center(
              child: Text("onboarding")
            )

        );
      }





}