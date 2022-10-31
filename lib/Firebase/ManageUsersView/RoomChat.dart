


import 'package:ejemplo/Firebase/FirebaseEntities/TextChat.dart';
import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:ejemplo/Firebase/costumViews/textField.dart';
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
  final List<int> colorCodes = <int>[600, 500, 100];
  RFTextFiled textFiled=RFTextFiled(title: 'Message');

  void DescargaChatTexts(Room room) async {

    listaTextChat= await fireBaseAdmin.DescargarTextChat(room.Uid!);
      DataHolder().listChatText=listaTextChat;


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    room=DataHolder().roomSelected;
    DescargaChatTexts(room);

    final doc=fireBaseAdmin.actalizarChat(room.Uid!);


    doc.listen((event) {
      for(int i=0;i<event.docs.length;i++){
        setState(() {

          listaTextChat.add(event.docs[i].data());

        });
        
      }

    });

   

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(room.name.toString()),),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 400,
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: listaTextChat.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text(listaTextChat[index].text!)),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),


            ),
            textFiled,
            FloatingActionButton(
              child: Text('Send'),
              onPressed: () {

                fireBaseAdmin.InsertTextChat(textFiled.getText(),room.Uid!);


              },

            ),
          ],

        ),
      ),



    );

  }
}