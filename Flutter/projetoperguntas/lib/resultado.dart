import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //const Resultado({super.key});

  final int notaTotal;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.notaTotal, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (notaTotal < 8) {
      return 'Parabéns';
    } else if (notaTotal < 12) {
      return "Você é bom";
    } else if (notaTotal < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Parabéns!",
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          child: Text(
            "Reiniciar",
            style: TextStyle(fontSize: 18),
          ),
          onPressed: quandoReiniciarQuestionario,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}
