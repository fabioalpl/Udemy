import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/uteis/paletaCores.dart';
import 'package:flutter/material.dart';

class ImagemPerfil extends StatelessWidget {
  String urlImagem;
  bool foiVisualizado;

  ImagemPerfil(
      {super.key, required this.urlImagem, this.foiVisualizado = false});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: PaletaCores.azulFacebook,
      child: CircleAvatar(
        radius: foiVisualizado ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(urlImagem),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
