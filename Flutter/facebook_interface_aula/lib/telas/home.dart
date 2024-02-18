import 'package:facebook_interface_aula/componentes/area_criar_postagem.dart';
import 'package:facebook_interface_aula/componentes/botao_circulo.dart';
import 'package:facebook_interface_aula/dados/dados.dart';
import 'package:facebook_interface_aula/modelos/modelos.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../componentes/area_estoria.dart';
import '../componentes/cartao_postagem.dart';
import '../uteis/paletaCores.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: PaletaCores.azulFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
            actions: [
              BotaoCirculo(
                icone: Icons.search,
                iconeTamanho: 38,
                onPressed: () {},
              ),
              BotaoCirculo(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 38,
                onPressed: () {},
              )
            ],
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(usuario: usuarioAtual),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: AreaStoria(usuario: usuarioAtual, estorias: estorias),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, indice) {
              Postagem postagem = postagens[indice];
              return CartaoPostagem(
                postagem: postagem,
              );
            }, childCount: postagens.length),
          )
        ],
      ),
    );
  }
}
