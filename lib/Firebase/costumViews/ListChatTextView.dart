


import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

import '../FirebaseEntities/TextChat.dart';

class ListChatTextView extends StatefulWidget{


  @override
  State<ListChatTextView> createState() => _ListChatTextViewState();
}

class _ListChatTextViewState extends State<ListChatTextView> {
  final List<int> colorCodes = <int>[600, 500, 100];

   late List<TextChat>listChat;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listChat=DataHolder().listChatText;
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  Scaffold();
  }
}