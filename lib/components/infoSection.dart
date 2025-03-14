import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class InfoSection extends StatelessWidget {
  final String location;
  final String countries;
  final String photos;

  const InfoSection(
      {super.key,
      required this.location,
      required this.countries,
      required this.photos});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        spacing: 16,
        children: [
          Row(
            children: [
              Icon(
                PhosphorIcons.mapPin(PhosphorIconsStyle.regular),
                size: 24,
                color: Color(0xFFEF5F4C),
              ),
              SizedBox(width: 8),
              Text(
                location,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.70,
                    color: Color(0xFF6C6C6C)),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                PhosphorIcons.airplaneTilt(PhosphorIconsStyle.regular),
                size: 24,
                color: Color(0xFFEF5F4C),
              ),
              SizedBox(width: 8),
              Text(
                countries,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.70,
                    color: Color(0xFF6C6C6C)),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                PhosphorIcons.image(PhosphorIconsStyle.regular),
                size: 24,
                color: Color(0xFFEF5F4C),
              ),
              SizedBox(width: 8),
              Text(
                photos,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.70,
                    color: Color(0xFF6C6C6C)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
