import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;


  const AboutSection({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento horizontal inicial
      children: [
        CircleAvatar( // Widget para adicionar a foto de perfil
          backgroundImage: AssetImage(imageUrl), // Imagem
          radius: 60, // Tamanho do circulo
        ),
        SizedBox(height: 16,), // Espaçamento
        Text( // Widget de text
          title, // texto a ser inserido
          style: GoogleFonts.poppins( // Estilo da fonte e tipografia 
            fontSize: 24, // Tamanho da fonte
            fontWeight: FontWeight.bold, // Espessura da fonte
            color: Color(0xFF313131), // Cor da fonte
            height: 1.25
          ),
        ),
        SizedBox(height: 8),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6C6C6C),
            height: 1.70,
          ),
        ),
      ],
    );
  }
}