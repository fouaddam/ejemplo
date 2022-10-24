

import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

import '../FirebaseEntities/rooms.dart';

class cardsView extends StatelessWidget{

  /*final String nombre;
  final String size;
  final Function(int index) onShortClick;
  final int index;*/

  final List<Room>listarooms;

  const cardsView({super.key, required this.listarooms});

  void navigatorPages(int index,BuildContext context){

    DataHolder().roomSelected=listarooms[index];
    NavigatorState NaveTo=Navigator.of(context);

    switch(index){
      case 0:NaveTo.pushNamed(DataHolder().ROOMCHAT);break;
      case 1:NaveTo;break;
      case 2:NaveTo;break;
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: listarooms.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Card(
                  child:Container(
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(listarooms[index].photo!),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Text(listarooms[index].name!+" numero de miembros"+(listarooms.length-1).toString()),
                  ),


                ),
                onTap: () {
                  navigatorPages( index, context);
                },
              );
            }
        ),
      );

  }




}