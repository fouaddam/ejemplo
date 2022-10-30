


import 'package:ejemplo/Firebase/FirebaseEntities/TextChat.dart';
import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

import '../FirebaseEntities/rooms.dart';
import '../costumViews/ListChatTextView.dart';

class RoomChat extends StatefulWidget{


   const RoomChat({super.key});

  @override
  State<RoomChat> createState() => _RoomChatState();
}

class _RoomChatState extends State<RoomChat> {

  FireBaseAdmin fireBaseAdmin= FireBaseAdmin();
  Room room= Room();
  List<TextChat>listaTextChat=[];

  void DescargaChatTexts() async {
    listaTextChat= await fireBaseAdmin.DescargarTextChat(room.Uid!);
    print(listaTextChat.first.text);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      room=DataHolder().roomSelected;
      DescargaChatTexts();
    });



  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(room.name.toString()),),
      body: Center(child:
      ListChatTextView(listChat:listaTextChat)
      ),
    );

  }
}