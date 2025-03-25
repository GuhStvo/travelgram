import 'package:flutter/material.dart';

class Imagem extends StatelessWidget {
  final String url;

  const Imagem({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: url.startsWith('http') ? NetworkImage(url) : AssetImage(url) as ImageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}