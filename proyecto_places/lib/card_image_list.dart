import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //cardImageList
    final cardImageList = Container(
      height: 330,
      child: ListView(
       scrollDirection: Axis.horizontal,
       children: <Widget>[
         CardImage("assets/image/lugar1.jpeg"),
         CardImage("assets/image/lugar2.jpg"),
         CardImage("assets/image/lugar3.jpeg"),
         CardImage("assets/image/lugar4.jpeg"),
         CardImage("assets/image/lugar5.jpg"),
         CardImage("assets/image/lugar6.webp"),
       ],
      ),
    );
    return cardImageList;
  }

}