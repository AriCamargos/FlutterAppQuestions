import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Branco ⚪', 'pontuacao': 10},
        {'texto': 'Vermelho 🔴', 'pontuacao': 5},
        {'texto': 'Verde 🟢', 'pontuacao': 3},
        {'texto': 'Roxo 🟣', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho 🐇', 'pontuacao': 5},
        {'texto': 'Cobra 🐍', 'pontuacao': 1},
        {'texto': 'Elefante 🐘', 'pontuacao': 3},
        {'texto': 'Leão 🦁', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual sua bebida favorita?',
      'respostas': [
        {'texto': 'Caipirinha 🍹', 'pontuacao': 10},
        {'texto': 'Água 🥤', 'pontuacao': 5},
        {'texto': 'Cerveja 🍺', 'pontuacao': 3},
        {'texto': 'Café ☕ ', 'pontuacao': 1},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

