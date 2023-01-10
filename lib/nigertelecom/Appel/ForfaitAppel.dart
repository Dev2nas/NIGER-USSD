import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niger_ussd/airtel/appel/tabBar/hebdomadaire.dart';
import 'package:niger_ussd/airtel/Appel/tabBar/nuit.dart';
import 'tabBar/journalier.dart';
import 'tabBar/mensuel.dart';

class forfaitAppel extends StatelessWidget {
  const forfaitAppel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('3ba436'),
          title: Text("Forfait appel",
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
                  constraints: BoxConstraints.expand(
                      //height: 50
                  ),
                  color: Colors.white,
                  child: TabBar(isScrollable: true,
                    labelColor: HexColor('3ba436'),
                    //indicatorColor: Colors.white,
                    unselectedLabelColor: HexColor('#e95828'),
                    //indicator: BoxDecoration(color: HexColor('3ba436'),),
                    indicatorColor: HexColor('3ba436'),
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
                  //scrollDirection: Axis.vertical,
                  child: Column(
                   // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          //height: 537,
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
