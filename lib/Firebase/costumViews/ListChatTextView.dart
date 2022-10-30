


import 'package:flutter/material.dart';

import '../FirebaseEntities/TextChat.dart';

class ListChatTextView extends StatelessWidget{


  final List<int> colorCodes = <int>[600, 500, 100];
  final List<TextChat>listChat;
  ListChatTextView({super.key, required this.listChat});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: listChat.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text(listChat[index].text!)),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }




}