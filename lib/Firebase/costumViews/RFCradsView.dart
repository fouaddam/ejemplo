

import 'package:flutter/material.dart';

class cardsView extends StatelessWidget{
  const cardsView({super.key});

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
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.amber,
                child: Center(child: Text('$index')),

              );
            }
        ),
      );

  }




}