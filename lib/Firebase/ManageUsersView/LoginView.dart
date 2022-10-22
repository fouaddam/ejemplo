


    import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

    import '../costumViews/textField.dart';

          RFTextFiled email=RFTextFiled(title: 'email',);
          RFTextFiled password=RFTextFiled(title: 'passwor',password: true);


          Future<void> SingIn(BuildContext context) async {
            try {
              final credential = await DataHolder().getAuthInstance().signInWithEmailAndPassword(
                  email: email.getText(),
                  password: password.getText()
              ).then((value) => Navigator.of(context).popAndPushNamed('/home'));
              
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                print('No user found for that email.');
              } else if (e.code == 'wrong-password') {
                print('Wrong password provided for that user.');
              }
            }
          }

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