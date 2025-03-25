import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paragraph extends StatelessWidget {
  final String text;

  const Paragraph({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(
          color: Color(0xFF333333), fontSize: 14, fontWeight: FontWeight.w400),
    );
  }
}
