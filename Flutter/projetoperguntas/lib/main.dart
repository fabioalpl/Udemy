import 'package:flutter/material.dart';
import 'package:projetoperguntas/questionario.dart';
import 'package:projetoperguntas/resultado.dart';

/*void main() {
  runApp(const MyApp());
}*/

main() => runApp(MaterialApp(home: PerguntasApp()));

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  //Lista de Map
  final _perguntas = const [
    {
      'texto': "Qual é a sua cor favorita?",
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 3},
        {'texto': 'Leão', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'nota': 10},
        {'texto': 'João', 'nota': 10},
        {'texto': 'Leo', 'nota': 10},
        {'texto': 'Pedro', 'nota': 10}
      ],
    }
  ];

  var _perguntaSelecionada = 0;
  var _notaTotal = 0;

  void _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _notaTotal += nota;
      });
    }

    //print("Pergunta respondida");
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _notaTotal = 0;
    });
  }

  void Function() funcaoQueRetornaOutraFuncao() {
    return () {
      print("Pergunta respondida #02");
    };
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // Array
    /*final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal preferido?"
    ];*/

    /*for (var textResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      //print(textResp);
      respostas.add(Resposta(textResp, _responder));
    }*/
    return Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              responder: _responder,
            )
          //Column(
          //children: [
          //Text(perguntas.elementAt(_perguntaSelecionada)),
          //Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
          //...widgets,
          /*Resposta("Resposta 1", _responder),
          Resposta("Resposta 2", _responder),
          Resposta("Resposta 3", _responder),*/
          //ElevatedButton(onPressed: _responder, child: Text("Resposta 1")),
          /*ElevatedButton(
              onPressed: () => print("Resposta 2"), child: Text("Resposta 2")),
          ElevatedButton(
              onPressed: funcaoQueRetornaOutraFuncao,
              child: Text("Resposta 3")),*/
          // ],
          : Resultado(_notaTotal, _reiniciarQuestionario),
    );
  }
}
