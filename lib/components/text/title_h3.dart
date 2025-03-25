import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H3 extends StatelessWidget {
  final String text;

  const H3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700),
    );
  }
}
