import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
            'https://media.giphy.com/media/NsEHi1o725u4j6S8kK/giphy.gif'),
        Text(
          'Parabéeens!',
          style: TextStyle(
            fontSize: 30,
            color: Colors.teal[600],
            MARGI: 2,
          ),
        ),
      ],
    );
  }
}
