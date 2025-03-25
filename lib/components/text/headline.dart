import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headline extends StatelessWidget {
  final String text;

  const Headline({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
          fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFFE1624F)),
    );
  }
}
