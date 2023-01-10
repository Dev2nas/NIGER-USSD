import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niger_ussd/zamani/internet/tabBar/hebdomadaire.dart';
import 'package:niger_ussd/zamani/internet/tabBar/nuit.dart';
import 'tabBar/journalier.dart';
import 'tabBar/mensuel.dart';

class forfaitInternet extends StatelessWidget {
  const forfaitInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: HexColor("#e50c5a"),
          backgroundColor: HexColor('#ffe815'),
          title: Text("Forfait internet",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: DefaultTabController(
          length: 4, // length of tabs
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(child:
                Container(
                  constraints: BoxConstraints.expand(height: 50),
                  color: Colors.white,
                  child: TabBar(isScrollable: true,
                    labelColor: HexColor('#e50c5a'),
                    //indicatorColor: Colors.white,
                    unselectedLabelColor: HexColor('#ffe815'),
                    //indicator: BoxDecoration(color: HexColor('#f38326'),),
                    indicatorColor: HexColor('#e50c5a'),
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
                ),flex: 1, ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                          height: 600,
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
