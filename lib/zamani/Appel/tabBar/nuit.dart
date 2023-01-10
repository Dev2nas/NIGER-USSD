import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class nuit extends StatelessWidget {
  const nuit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: true,
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        Center(
            child: Text("Sélectionner une option",
                style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#e50c5a')))),
        //100f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _100f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                         "100F",
                          style: GoogleFonts.lato(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "120 Min vers Zamani(23H à 06H)",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: HexColor('#e50c5a')),
              ),
            ),
          ),
        ),
        //500f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _500f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "500F",
                          style: GoogleFonts.lato(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "800Min vers Zamani(23H à 6H/7Jours)",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: HexColor('#e50c5a')),
              ),
            ),
          ),
        ),
        //1500f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _1500f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "1500F",
                          style: GoogleFonts.lato(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "3500Min vers Zamani(23H à 5H/1Mois)",
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5, backgroundColor: HexColor('#e50c5a')),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

_100f() async {
  const number = '#225*7*1#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
_500f() async {
  const number = '#225*7*2#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
_1500f() async {
  const number = '#225*7*3#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

