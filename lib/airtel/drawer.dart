import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:niger_ussd/version.dart';
import 'package:flutter/src/material/drawer.dart';
import '../apropos.dart';
import '../contacts.dart';
//import '../share.dart';
import 'drawer.dart';
import 'index_airtel.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: HexColor('#ff0000'),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              //  decoration: BoxDecoration(color: Color.fromRGBO(241, 54, 80, 1.0)),
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset(
                "images/airtel.png",
                color: HexColor('#ff0000'),
              )),
          ListTile(
            leading: Icon(FontAwesomeIcons.phone),
            title: Text(
              'Nous contacter',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => contacts())); //Quiz
            },
          ),
          //share
          /*ListTile(
            leading: Icon(FontAwesomeIcons.shareAlt),
            title: Text(
              'Partager',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => share())); //Quiz
            },
          )*/
          ListTile(
            leading: Icon(Icons.help),
            title: Text(
              'A propos du Développeur',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => apropos())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Boxicons.bxs_donate_heart),
            title: Text(
              'Faire un Don',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => index_airtel())); //Quiz
            },
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text(
              'Version',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => version())); //Quiz
            },
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Text('by @devnas'),
              )
            ],
          )
        ],
      ),
    );
  }
}
