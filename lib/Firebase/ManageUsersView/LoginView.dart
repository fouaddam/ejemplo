


import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

    import '../costumViews/textField.dart';

          RFTextFiled email=RFTextFiled(title: 'email',);
          RFTextFiled password=RFTextFiled(title: 'passwor',password: true);
          FireBaseAdmin fireBaseAdmin=FireBaseAdmin();

    class Login extends StatelessWidget{
      @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return  Scaffold(
            body:Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  email,
                  SizedBox(height: 20,),
                  password,
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          fireBaseAdmin.SingIn(context, email.getText(), password.getText());

                        },
                        child: Text("aceptar"),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("salir"),
                      )
                    ],
                  )


                ],
              ),
            )

        );
      }





}