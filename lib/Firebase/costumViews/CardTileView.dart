

import 'package:flutter/material.dart';

class CardTileView extends StatelessWidget{
  const CardTileView({super.key, required this.name, required this.image, required this.onShortClick, required this.index});
  final String name;
  final String image;
  final Function(int index) onShortClick;
  final int index;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
      ),

      child: InkWell(
          onTap: (){ print(onShortClick); },
          child:   Card(
            color: Colors.amber,
            child: Center(child: Text(name.toString())),

          ),
    ),



    );
  }
  
}