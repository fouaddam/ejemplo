

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'FirebaseEntities/Perfil.dart';

class FireBaseAdmin{


  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;

        String? getCurrentUser(){
          return firebaseAuth.currentUser?.uid;

        }









}