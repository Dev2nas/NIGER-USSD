import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class soldes extends StatelessWidget {
  const soldes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: HexColor("#e50c5a"),
          backgroundColor: HexColor('#ffe815'),
          title: Text("Soldes",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))),
      backgroundColor: Colors.white,
      body: GridView.count(
        shrinkWrap: true,
        primary: true,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 2,
        children: <Widget>[
          //appel
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    _creditInit();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(FontAwesomeIcons.phone, size: 80),
                      Center(
                        child: Text(
                          "Mon crédit initial",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 5, backgroundColor: HexColor('#e50c5a')),
                ),
              ),
            ),
          ),
          //internet
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    _minInternet();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(FontAwesomeIcons.globe, size: 80),
                      Center(
                        child: Text(
                          "Internet",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 5, backgroundColor: HexColor('#e50c5a')),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_creditInit() async {
  const number = '#122#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_minInternet() async {
  const number = '#123#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
