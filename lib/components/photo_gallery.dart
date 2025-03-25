import 'package:flutter/material.dart';
import 'package:travelgram/models/imagem.dart';

class PhotoGallery extends StatelessWidget {
  final List<Imagem> imagens; // Alterado para uma lista de Imagem
  const PhotoGallery(this.imagens, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        spacing: 16,
        children: imagens.map((imagem) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 328,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagem.imageUrl), // Usar imageUrl da classe Imagem
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}