


import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:flutter/material.dart';

import '../FirebaseEntities/rooms.dart';
import '../costumViews/RFCradsView.dart';

class RoomView extends StatefulWidget{
  @override
  State<RoomView> createState() => _RoomViewState();
}

class _RoomViewState extends State<RoomView> {
  FireBaseAdmin fireBaseAdmin=FireBaseAdmin();
  List<Room>listaRooms=[];






  void descargarRomms() async {

    listaRooms=await fireBaseAdmin.getAllRooms();

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        setState(() {
          descargarRomms();

        });


  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 50,right: 30),
        child: Center(

          child:cardsView(listarooms: listaRooms)

        ),
      ),
    );
  }
}