

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../../../singlton/DataHolder.dart';
import '../../FirebaseEntities/Perfil.dart';
import '../../costumViews/RFToast.dart';

class FireBaseAdmin{


  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
  RFToast rfToast =new RFToast();

        String? getCurrentUserUid(){
          return firebaseAuth.currentUser?.uid;

        }

          User? getCurrentUser(){
            return firebaseAuth.currentUser;

  }

  

      void SingIn(BuildContext context,String email,String password) async {
        try {
          final credential = await firebaseAuth.signInWithEmailAndPassword(
              email: email,
              password: password
          ).then((value) => PerfilExist(context));

        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            rfToast.getToast('No user found for that email.');
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            rfToast.getToast('Wrong password provided for that user.');
          }
        }
      }

      void CreateUser(BuildContext context,String email,String password) async {
        try {
          final credential = await firebaseAuth.createUserWithEmailAndPassword(
            email: email,
            password: password,
          ).then((value) => Navigator.of(context).popAndPushNamed(DataHolder().LOGIN));
          
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
      }

      void PerfilExist(BuildContext context) async {
        await Future.delayed(Duration(seconds: 2));
        final ref = firebaseFirestore.collection(DataHolder().PERFILES)
            .doc(this.getCurrentUserUid()).withConverter(
          fromFirestore: Perfil.fromFirestore,
          toFirestore: (Perfil perfil, _) => perfil.toFirestore(),
        );
        final docSnap = await ref.get();
        final perfil = docSnap.data();

            if (perfil != null) {
              Navigator.of(context).popAndPushNamed(DataHolder().HOME);
              DataHolder().perfil=perfil;

            } else {
              print("No such document.");
              Navigator.of(context).popAndPushNamed(DataHolder().ONBOARDING);
            }

      }


    }










