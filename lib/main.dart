import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:travelgram/components/aboutSection.dart';
import 'package:travelgram/components/infoSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelgram',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          title: Row(
            children: <Widget>[
              Icon(
                PhosphorIcons.globeHemisphereWest(PhosphorIconsStyle.regular),
                size: 40,
                color: Color(0xFFEF5F4C),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Travelgram',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEF5F4C),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.regular),
                  size: 32,
                  color: Color(0xFF6C6C6C),
                )),
            IconButton(
                onPressed: () => {},
                icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/imgs/profilePic.png'),
                ))
          ],
        ),
        body: Column(
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
            Container(padding: const EdgeInsets.all(32),child: Column(children: <Widget>[
              
            ],),)

          ],
        ),
      ),
    );
  }
}
