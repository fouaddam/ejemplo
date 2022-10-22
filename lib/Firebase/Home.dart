



import 'package:ejemplo/singlton/DataHolder.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(DataHolder().perfil.name.toString()),
      ),
      body: Center(
        child: Text("holaa"),
      ),
    );
  }



}