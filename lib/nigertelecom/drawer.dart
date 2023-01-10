import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'version.dart';
import 'drawer.dart';
import 'apropos.dart';
import 'contacts.dart';
import '../setup.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: HexColor('3ba436'),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              //  decoration: BoxDecoration(color: Color.fromRGBO(241, 54, 80, 1.0)),
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset(
                "images/nigertelecom.png",
                //color: HexColor('3ba436'),
              )),
          //changer d'operateur
          ListTile(
            leading: Icon(FontAwesomeIcons.simCard),
            title: Text(
              "Changer d'operateur",
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => setup())); //Quiz
            },
          ),
          //nous conctacter
          ListTile(
            leading: Icon(FontAwesomeIcons.phone),
            title: Text(
              'Contacts',
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
              Navigator.of(context).pop();
              final snackBar = SnackBar(
              content:Text(
                  'Bientôt',
                  style: GoogleFonts.lato(color: HexColor('3ba436'),
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
