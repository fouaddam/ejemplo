import 'package:cloud_firestore/cloud_firestore.dart';

class TextChat {
  final String? text;
  final Timestamp? dateTime;
  final String? author;


  TextChat({
    this.text="",
    this.dateTime,
    this.author="",

  });

  factory TextChat.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return TextChat(
      text: data?['text'],
      dateTime: data?['time'],
      author: data?['author'],


    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (text != null) "text": text,
      if (dateTime != null) "time": dateTime,
      if (author != null) "author": author,

    };
  }
}