import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUS extends StatefulWidget {
  const AboutUS({super.key});

  @override
  State createState() => _AboutUSState();
}

class _AboutUSState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About us",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
