

import 'package:firebase_auth/firebase_auth.dart';

import '../Firebase/FirebaseAdmin.dart';

class DataHolder{

  static final DataHolder _dataHolder = new DataHolder._internal();
  static final FireBaseAdmin fireBaseAdmin=new FireBaseAdmin();



          DataHolder._internal();

              factory DataHolder(){
                return _dataHolder;
              }

          void getCurrentUser(){
                fireBaseAdmin.getCurrentUser();
          }

          FirebaseAuth getAuthInstance(){
               return fireBaseAdmin.firebaseAuth;
          }









}