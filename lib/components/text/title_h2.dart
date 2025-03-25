import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H2 extends StatelessWidget {
  final String text;

  const H2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700),
    );
  }
}
