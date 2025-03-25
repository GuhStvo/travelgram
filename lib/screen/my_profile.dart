import 'package:flutter/material.dart';
import 'package:travelgram/components/aboutSection.dart';
import 'package:travelgram/components/infoSection.dart';
import 'package:travelgram/components/photo_gallery.dart';
import 'package:travelgram/data/dummy_data.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
                          InfoSection(
                              location: 'São Paulo, Brazil',
                              countries: '37 países',
                              photos: '240 fotos'),
                        ],
                      ),
                    ],
                  ),
                ),
                /* Galeria de fotos do perfil*/
                Container(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: <Widget>[PhotoGallery(dummyImagem)],
                  ),
                )
              ],
            ),
    );
  }
}