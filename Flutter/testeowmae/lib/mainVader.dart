import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple, // Cor de fundo roxo

        appBar: AppBar(
          title: Text('Minha Tela Roxa'),

          backgroundColor: Colors.transparent, // Remove a barra superior
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('ow.jpg'), // Imagem centralizada

              SizedBox(height: 20), // Espaçamento entre a imagem e os botões

              ElevatedButton(
                onPressed: () {
                  // Ação quando o botão "entrar" é pressionado
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, // Cor de fundo amarela
                ),
                child: Text('Entrar'),
              ),

              SizedBox(height: 10), // Espaçamento entre os botões

              ElevatedButton(
                onPressed: () {
                  // Ação quando o botão "cadastrar" é pressionado
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, // Cor de fundo amarela
                ),
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
