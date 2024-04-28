import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:mera_rashan/views/my_drawer.dart';

class Pulses extends StatefulWidget {
  const Pulses({super.key});
  @override
  State createState() => _PulsesState();
}

class _PulsesState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Pulses",
          style: GoogleFonts.poppins(
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
