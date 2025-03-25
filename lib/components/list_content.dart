import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListContent extends StatelessWidget {
  final String text;

  const ListContent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alinha o conteúdo à esquerda
      children: <Widget>[
        Text(
          'Bom para:',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8), // Espaço entre o título e o item
        Row(
          children: [
            const Icon(Icons.circle, size: 5), // Bullet point
            const SizedBox(width: 8), // Espaço entre o bullet e o texto
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
