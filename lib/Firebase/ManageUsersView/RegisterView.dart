
      import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
      import 'package:flutter/material.dart';
      import '../costumViews/textField.dart';

      RFTextFiled email=RFTextFiled(title: 'email',);
      RFTextFiled password=RFTextFiled(title: 'passwor',password: true);
      RFTextFiled password2=RFTextFiled(title: 'repite password',password: true);

      FireBaseAdmin fireBaseAdmin=FireBaseAdmin();


      void ComprobacionPassword(BuildContext context){
        if(password==password2){
          fireBaseAdmin.CreateUser(context, email.getText(), password.getText());
        }else{
          print("las contraseñas no sn iguales");
        }
      }




      class Register extends StatelessWidget{
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
                    password2,
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {

                            ComprobacionPassword(context);

                          },
                          child: Text("registrar"),
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