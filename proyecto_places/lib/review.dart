import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathFoto;
  String textNombreUsuario;
  String textResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;
  //metodo constructor
  Review(this.pathFoto, this.textNombreUsuario, this.textResumenUsuario, this.cantidadEstrellas, this.textoComentario);
  @override
  Widget build(BuildContext context) {
    final foto = Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 10
      ),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            pathFoto
          ),
          fit: BoxFit.cover
        )
      ),
    );

    //nombre del usuario
    final nombreUsuario = Container(
      child:Text(
        textNombreUsuario,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 22
        ),
      ),
    );
    //resumen usuario
    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Text(
        textResumenUsuario,
        style: TextStyle(
          fontFamily: "Lato",
          color: Colors.black54
        ),
      ),
    );
    //estrellas
    final estrella = Container(
      margin: EdgeInsets.only(
          right: 3
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 15,
      ),
    );

    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black54,
        size: 15,
      ),
    );
//fila estrellas
    List<Container> estrellas = [];
    for (int i=0; i<5; i++){
      if(i<cantidadEstrellas){
        estrellas.add(estrella);
      } else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaEstrellas = Row(
        children: estrellas
    );

    //fila resumen
    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filaEstrellas
      ],
    );

    //comentario
    final comentario = Container(
      child: Text(
        textoComentario,
        style: TextStyle(
          fontFamily: "Lato",
        ),
      ),
    );
    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nombreUsuario,
        filaResumen,
        comentario
      ],
    );

    //review
    final review = Row(
      children: <Widget>[
        foto,
        columnaReview
      ],
    );
   return review;
  }
}