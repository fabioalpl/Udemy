import 'package:flutter/cupertino.dart';
import 'package:projetoperguntas/questao.dart';
import 'package:projetoperguntas/resposta.dart';

class Questionario extends StatelessWidget {
  //const Questionario({super.key});
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['resposta']
            as List<Map<String, Object>>
        : [];

    /*List<Widget> widgets = respostas
        .map((resp) => Resposta(resp['texto'] as String, responder))
        .toList();*/

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        //...widgets,
        /*...respostas
            .map((resp) => Resposta(resp['texto'].toString(), () => responder(int.parse(resp['nota'].toString()))))
            .toList(),*/
        // outra forma de fazer
        ...respostas.map((resp) {
          return Resposta(resp['texto'].toString(),
              () => responder(int.parse(resp['nota'].toString())));
        }).toList(),
      ],
    );
  }
}
