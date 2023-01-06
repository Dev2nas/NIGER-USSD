import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niger_ussd/airtel/internet/tabBar/hebdomadaire.dart';
import 'package:niger_ussd/airtel/internet/tabBar/nuit.dart';
import 'tabBar/journalier.dart';
import 'tabBar/mensuel.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:niger_ussd/airtel/Appel/ForfaitAppel.dart';

class forfaitInternet extends StatelessWidget {
  const forfaitInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('#ff0000'),
          title: Text("Forfait internet",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))),
      backgroundColor: Colors.white,
      body: DefaultTabController(
          length: 4, // length of tabs
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 50),
                  color: Colors.white,
                  child: TabBar(isScrollable: true,
                    labelColor: HexColor('#ff0000'),
                    //indicatorColor: Colors.white,
                    unselectedLabelColor: HexColor('#ff8888'),
                    //indicator: BoxDecoration(color: HexColor('#ff0000'),),
                    indicatorColor: HexColor('#ff0000'),
                    tabs: [
                      Tab(child: Text("Journalier",style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),)),
                      Tab(child: Text("Hebdomadaire",style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),)),
                      Tab(child: Text("Mensuel",style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),)),
                      Tab(child: Text("Nuit",style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                          height: 537,
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: journalier(),
                            ),
                            //logo
                            Container(
                              child: hebdomadaire(),
                            ),
                            Container(
                              child: mensuel(),
                            ),
                            Container(
                              child: nuit(),
                            ),
                          ])),
                    ],
                  ),
                )
              ])),
    );
  }
}
