import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/componentes/imagem_perfil.dart';
import 'package:facebook_interface_aula/modelos/modelos.dart';
import 'package:flutter/material.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;
  const CartaoPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        //Cabeçalho
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              CabecalhoPostagem(postagem: postagem),
              Text(postagem.descricao)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: CachedNetworkImage(
            imageUrl: postagem.urlImagem,
          ),
        ),
        Container(
          color: Colors.orange,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.orange,
          width: 100,
          height: 100,
        ),
      ]),
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;
  const CabecalhoPostagem({
    super.key,
    required this.postagem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.urlImagem,
          foiVisualizado: true,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "${postagem.tempoAtras} - ",
                    style: TextStyle(
                      color: Colors.grey[200],
                    ),
                  ),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        )
      ],
    );
  }
}
