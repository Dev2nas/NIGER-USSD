import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class version extends StatelessWidget {
  const version({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('#f38326'),
          title: Text("Version",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))),
      backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text("v1.0",
            style: GoogleFonts.lato(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: HexColor('#0071bc'))),
      ),
    );
  }
}