import 'package:flutter/material.dart';
import 'package:proyecto_places/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //reviewList
    final reviewList = Column(
      children: <Widget>[
        Review("assets/image/persona1.jpg","Laura Leon","1 review - 4 photos", 2, "Excelente lugar para visitar"),
        Review("assets/image/persona2.jpg","Maria Eugenia","4 review - 3 photos", 4, "Nunva visite el lugar"),
        Review("assets/image/persona3.jpeg","Lorena","3 review - 2 photos", 5, "Lo recomiendo bastante"),
        Review("assets/image/persona4.jpeg","Luis Martinez","5 review - 4 photos", 3, "Me gustaria conocerlo"),
        Review("assets/image/persona5.webp","Carlos","3 review - 2 photos", 3, "Hermoso lugar para visitar"),

      ],
    );
  return reviewList;
  }

}