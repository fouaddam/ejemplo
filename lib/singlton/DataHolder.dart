

import 'package:ejemplo/Firebase/FirebaseEntities/Perfil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';

class DataHolder{

   static final DataHolder _dataHolder = new DataHolder._internal();
   final FireBaseAdmin fireBaseAdmin=new FireBaseAdmin();
   Perfil perfil=new Perfil();



  final  String HOME='/Home';
  final  String LOGIN='/Login';
  final  String SPLACH='/Splash';
  final  String REGISTER='/REGISTER';
  final String PERFILES='/Perfiles';
  final String ONBOARDING='/OnBoarding';



          DataHolder._internal();

              factory DataHolder(){
                return _dataHolder;
              }

          void getCurrentUser(){
                fireBaseAdmin.getCurrentUserUid();
          }













}