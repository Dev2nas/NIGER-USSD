import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:niger_ussd/zamani/appel/ForfaitAppel.dart';
import 'package:niger_ussd/zamani//Internet/ForfaitInternet.dart';
import 'package:niger_ussd/zamani/soldes.dart';
import 'package:niger_ussd/zamani/numero_urgent.dart';
import 'drawer.dart';

class index_zamani extends StatelessWidget {
  const index_zamani({Key? key}) : super(key: key);
  //const SnackBarDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        foregroundColor: HexColor("#e50c5a"),
        backgroundColor: HexColor('ffe815'),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/zamani.png",
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            Container()
          ],
        ),
      ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forfaitAppel()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(FontAwesomeIcons.phone, size: 80),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forfaitInternet()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(FontAwesomeIcons.globe, size: 80),
                      Center(
                        child: Text(
                          "Forfait internet",
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
          //soldes
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => soldes()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'images/phone_keys.png',
                        width: 80,
                      ),
                      Center(
                        child: Text(
                          "Soldes",
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
          //imeil
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content:Text(
                          'Bientôt',
                          style: GoogleFonts.lato(color: HexColor('#e50c5a'),
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'images/sim_card2.png',
                        width: 80,
                      ),
                      Center(
                        child: Text(
                          "Mon IMEI",
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
          //service clientel
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    _serviceClient();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Boxicons.bx_support, size: 80),
                      Center(
                        child: Text(
                          "Service clientèle",
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
          //mon numero
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    _monNumero();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(FontAwesomeIcons.simCard, size: 100),
                      Center(
                        child: Text(
                          "Mon numero",
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
          //numero urgent
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => numero_urgent()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(FontAwesomeIcons.ambulance, size: 80),
                      Center(
                        child: Text(
                          "Numero d'urgence",
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
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Card(
                child: ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content:Text(
                          'Bientôt',
                          style: GoogleFonts.lato(color: HexColor('#e50c5a'),
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Icons.favorite, size: 80),
                      Center(
                        child: Text(
                          "Mes favoris",
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

_imei() async {
  const number = '*#06#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
_serviceClient() async {
  const number = '222'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_monNumero() async {
  const number = '#999#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}