import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'airtel/index_airtel.dart';
import 'moov/index_moov.dart';
import 'zamani/index_zamani.dart';
import 'nigertelecom/index_nigertelecom.dart';
class setup extends StatelessWidget {
  const setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#e95828"),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //texte
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Veuillez sélectionner l'operateur sur lequel vous voulez éxecter des codes USSD",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                primary: true,
                crossAxisCount: 2,
                children: <Widget>[
                  //Niger Telecom
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Card(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => index_nigertelecom()));
                          },
                          child: Image.asset(
                            'images/nigertelecom.png',
                            width: 400,
                            height: 400,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Card(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => index_zamani()));
                          },
                          child: Image.asset(
                            'images/zamani.png',
                            width: 400,
                            height: 400,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#ffe815'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Card(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => index_moov()));
                          },
                          child: Image.asset(
                            'images/moov.png',
                            width: 400,
                            height: 400,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#0071bc'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Card(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => index_airtel()),
                            );
                          },
                          child: Image.asset(
                            'images/airtel.png',
                            width: 400,
                            height: 400,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#ff0000'),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ])));
  }
}
