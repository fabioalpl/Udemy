import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  //var height = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 140, 8, 149),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('imagens/logo.PNG'),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.purple[200], // Cor de fundo mais clara
                borderRadius:
                    BorderRadius.circular(10.0), // Cantos arredondados
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação quando o botão "entrar" é pressionado
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(250, 247, 210, 1),
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 90),
                    ),
                    child: Text('Entrar'),
                  ),

                  SizedBox(height: 50), // Espaçamento entre os botões
                  ElevatedButton(
                    onPressed: () {
                      // Ação quando o botão "cadastrar" é pressionado
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(250, 247, 210, 1),
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                    ),
                    child: Text('Cadastrar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
