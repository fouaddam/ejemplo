


import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

import '../FirebaseEntities/rooms.dart';

class RoomChat extends StatefulWidget{


   RoomChat({super.key});

  @override
  State<RoomChat> createState() => _RoomChatState();
}

class _RoomChatState extends State<RoomChat> {

  Room room= Room();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    room=DataHolder().roomSelected;

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text(room.name.toString()),
    );

  }
}