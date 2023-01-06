import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:niger_ussd/airtel/ForfaitAppel.dart';

class forfaitAppel extends StatelessWidget {
  const forfaitAppel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: HexColor('#ff0000'),
            title: Text("Forfait appel",
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ))),
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          primary: true,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
           Center(child:  Text("Sélectionner une option",style: GoogleFonts.lato(
               fontSize: 25,
               fontWeight: FontWeight.w500,color: HexColor('#ff0000')
           ))),
            //appel
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
              child: Center(
                child: Card(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => forfaitAppel()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [ Center(
                              child: Text(
                                "Forfait appel",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          Center(
                            child: Text(
                              "Forfait appel",
                              style: GoogleFonts.lato(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 5, backgroundColor: HexColor('#ff0000')),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
