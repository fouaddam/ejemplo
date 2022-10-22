

import 'package:cloud_firestore/cloud_firestore.dart';

class Perfil {
  final String? name;
  final int? age;
  final String? image;


  Perfil({
    this.name,
    this.age,
    this.image,

  });

  factory Perfil.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Perfil(
      name: data?['name'],
      age: data?['state'],
      image: data?['country'],

    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (age != null) "age": age,
      if (image != null) "image": image,
    };
  }
}