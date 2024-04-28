import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coarse extends StatefulWidget {
  const Coarse({super.key});
  @override
  State createState() => _CoarseState();
}

class _CoarseState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coarses",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
