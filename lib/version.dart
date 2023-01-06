import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:niger_ussd/airtel/appel/ForfaitAppel.dart';
import 'package:niger_ussd/airtel/Internet/ForfaitInternet.dart';
import 'package:flutter/src/material/drawer.dart';

class version extends StatelessWidget {
  const version({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('#ff0000'),
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
                color: HexColor('#ff0000'))),
      ),
    );
  }
}