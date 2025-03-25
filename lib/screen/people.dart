import 'package:flutter/material.dart';
import 'package:travelgram/components/aboutSection.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 32,
        children: <Widget>[
          /* Section About Profile */
          Container(
            padding: const EdgeInsets.all(32),
            color: Color(0xFFF5F5F5),
            child: Column(
              spacing: 32,
              children: [
                Column(
                  children: [
                    AboutSection(
                      imageUrl: 'assets/imgs/lgProfilePic.png',
                      title: 'Isabela Torres',
                      subtitle:
                          'Amante de viagens, cultura e gastronomia. 🌍✈️ Aqui compartilho as histórias registradas em cada clique, explorando cantinhos fascinantes do nosso planeta a partir da movimentada cidade de São Paulo. 🏙️📸',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
