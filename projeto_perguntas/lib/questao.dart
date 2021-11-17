import 'package:flutter/material.dart';

class Questao extends StatelessWidget { //componente Questao
  final String texto; //Atributo

  Questao(this.texto); //construtor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20), //margem de cima
      color: Colors.purple[50],
      child: Text(
        texto,
        style: TextStyle(
        color: Colors.black54,
        fontSize: 28),
        textAlign: TextAlign.center,//alinhando o texto no centro
        ),
    );

  }
}
