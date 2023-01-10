import 'package:flutter/material.dart';

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
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    
    print("Pergunta respondida");
  }

  void Function() funcaoQueRetornaOutraFuncao(){ 
    return (){
      print("Pergunta respondida #02");
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu animal preferido?"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: Column(
        children: [
          Text(perguntas.elementAt(_perguntaSelecionada)),
          Text("Olá Flutter"),
          Text("Olá Flutter"),
          ElevatedButton(
            onPressed: _responder,
            child: Text("Resposta 1")),
          ElevatedButton(
            onPressed: () => print("Resposta 2"),
            child: Text("Resposta 2")),
          ElevatedButton(
            onPressed: funcaoQueRetornaOutraFuncao,
            child: Text("Resposta 3")),
        ],
      ),
    );
  }
}
