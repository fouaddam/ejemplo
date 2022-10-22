

import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAdmin{


  FirebaseAuth firebaseAuth=FirebaseAuth.instance;

        String? getCurrentUser(){
          return firebaseAuth.currentUser?.uid;

        }





}