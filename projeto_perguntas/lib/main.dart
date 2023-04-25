import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Azul', 'Preto', 'Roxo', 'Laranja'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Gato', 'Cachorro', 'Hamster', 'Pato']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['João', 'Leonardo', 'Maria', 'Pedro'],
      }
    ];

    List<Widget> respostas = [];

    for (String textoResp in perguntas[_perguntaSelecionada]['respostas'] as List) {
      respostas.add(Respostas(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
