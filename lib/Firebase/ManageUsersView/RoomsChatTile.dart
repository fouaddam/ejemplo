

import 'package:ejemplo/Firebase/ManageUsersView/FBADMIN/FirebaseAdmin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../FirebaseEntities/rooms.dart';
import '../costumViews/CardTileView.dart';

class RommsChatTile extends StatefulWidget{

  @override
  State<RommsChatTile> createState() => _RommsChatTileState();
}

class _RommsChatTileState extends State<RommsChatTile> {
  FireBaseAdmin fireBaseAdmin=FireBaseAdmin();
  List<Room>listaRooms=[];

  void DescargarRooms() async {

      listaRooms=await fireBaseAdmin.listRooms;

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      DescargarRooms();

    });

  }

  void getIndexCard(int index){
    print(index);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: Center(
        child:  MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: listaRooms.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardTileView(name:listaRooms[index].name!,
                    image:listaRooms[index].photo! , onShortClick: getIndexCard, index: index,);
                }
            ),
          ),
      ),
    );
  }
}