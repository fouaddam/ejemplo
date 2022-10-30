
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ejemplo/Firebase/FirebaseEntities/Perfil.dart';

class Room {
  final String? name;
  final String? photo;
  final List<String>? perfils;
  final String? Uid;

  Room( {
    this.Uid,
    this.name,
    this.photo,
    this.perfils,
  });

  factory Room.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Room(
      name: data?['name'],
      photo: data?['photo'],
      Uid: snapshot.id,
      perfils:
      data?['members'] is Iterable ? List.from(data?['members']) : null,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (photo != null) "state": photo,
      if (perfils != null) "members": perfils,
    };
  }
}