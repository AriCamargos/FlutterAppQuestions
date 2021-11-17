import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontucao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontucao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontucao < 8) {
      return 'Parabéeeeens 👏';
    } else if (pontucao < 12) {
      return 'Você é bom 🤗';
    } else if (pontucao < 16) {
      return 'Impressionante 🤩';
    } else {
      return 'Magnífico 🎉';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 30,
              color: Colors.red[800],
              height: 2,
            ),
          ),
        ),
        ElevatedButton(
            onPressed: quandoReiniciarQuestionario,
            style: ElevatedButton.styleFrom(
              primary: Colors.red[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'Reiniciar',
              style: TextStyle(
                fontSize: 20,
              ),
            )),
      ],
    );
  }
}
