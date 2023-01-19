import 'package:flutter/material.dart';
import 'package:projetoperguntas/questao.dart';
import 'package:projetoperguntas/resposta.dart';

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
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];

  var _perguntaSelecionada = 0;

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    //print("Pergunta respondida");
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

    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['resposta']
        : [];
    List<Widget> widgets =
        respostas.map((t) => Resposta(t, _responder)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: temPerguntaSelecionada
          ? Column(
              children: [
                //Text(perguntas.elementAt(_perguntaSelecionada)),
                Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
                ...widgets,
                /*Resposta("Resposta 1", _responder),
          Resposta("Resposta 2", _responder),
          Resposta("Resposta 3", _responder),*/
                //ElevatedButton(onPressed: _responder, child: Text("Resposta 1")),
                /*ElevatedButton(
              onPressed: () => print("Resposta 2"), child: Text("Resposta 2")),
          ElevatedButton(
              onPressed: funcaoQueRetornaOutraFuncao,
              child: Text("Resposta 3")),*/
              ],
            )
          : Center(
              child: Text(
              "Parabéns!",
              style: TextStyle(fontSize: 28),
            )),
    );
  }
}
