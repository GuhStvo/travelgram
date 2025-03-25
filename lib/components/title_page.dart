import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sua próxima viagem:',
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFFE1624F)),
        ),
        Text(
          'Conheça Busan',
          style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        /* Imagem */
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 10),
          width: MediaQuery.of(context).size.width,
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage('assets/imgs/busan.png'),
                  fit: BoxFit.cover)),
        ),
        /* Legenda */
        Text(
          'Busan, a estrela em ascensão da Coreia do Sul, oferece de tudo, desde churrascarias de primeira linha até tradicionais barracas de comida de rua. Aqui, exploramos a segunda cidade da Coreia do Sul e descobrimos as suas ofertas culinárias.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              color: Color(0xFF333333),
              fontSize: 10,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
