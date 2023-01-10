import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class numero_urgent extends StatelessWidget {
  const numero_urgent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('#ff0000'),
          title: Text("Numero d'urgence",
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
          //sapeur
          Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          _sapeur();
                        },
                        icon: Icon(
                          Icons.phone,
                          size: 30,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Pompier",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("18",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 5, backgroundColor: HexColor('#ff0000')),
                      ),
                    ))),
          ),
          //police
          Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          _police();
                        },
                        icon: Icon(
                          Icons.phone,
                          size: 30,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Police",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("17",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 5, backgroundColor: HexColor('#ff0000')),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}

_sapeur() async {
  const number = '+22718'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
_police() async {
  const number = '+22717'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
