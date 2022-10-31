

import 'package:ejemplo/Firebase/FirebaseEntities/Perfil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Firebase/FirebaseEntities/TextChat.dart';
import '../Firebase/FirebaseEntities/rooms.dart';
import '../Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';

class DataHolder{

   static final DataHolder _dataHolder = new DataHolder._internal();
   final FireBaseAdmin fireBaseAdmin=new FireBaseAdmin();
   Perfil perfil= Perfil();
   Room roomSelected = Room();



  final  String HOME='/Home';
  final  String LOGIN='/Login';
  final  String SPLACH='/Splash';
  final  String REGISTER='/REGISTER';
  final String PERFILES='/Perfiles';
  final String ONBOARDING='/OnBoarding';
  final String ROOMS='/romms';
  final String ROOMCHAT='/RoomChat';
  final String ROOMSTILE='/RoomsTile';
  final String rROOM='/Rooms';
  /**********************************/
   final String fCOLLECTION_TEXT='/texts';

   /**********************************/
   List<TextChat>listChatText=[];




          DataHolder._internal();

              factory DataHolder(){
                return _dataHolder;
              }

          void getCurrentUser(){
                fireBaseAdmin.getCurrentUserUid();
          }













}