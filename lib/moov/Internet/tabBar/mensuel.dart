import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class mensuel extends StatelessWidget {
  const mensuel({Key? key}) : super(key: key);

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
                    color: HexColor('#0071bc')))),
        //2000f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _2000f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "2000F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "2,5Go",
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
                    elevation: 5, backgroundColor: HexColor('#0071bc')),
              ),
            ),
          ),
        ),
        //5000f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _5000f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text("5000F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "7Go",
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
                    elevation: 5, backgroundColor: HexColor('#0071bc')),
              ),
            ),
          ),
        ),
        //10000f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _10000f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "10000F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "17Go",
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
                    elevation: 5, backgroundColor: HexColor('#0071bc')),
              ),
            ),
          ),
        ),
        //20000f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _20000f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "20000F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "45Go",
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
                    elevation: 5, backgroundColor: HexColor('#0071bc')),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

_2000f() async {
  const number = '*888*1*1*3*1*1#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
_5000f() async {
  const number = '*888*1*1*3*2*1#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_10000f() async {
  const number = '*888*1*1*3*3*1#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_20000f() async {
  const number = '*888*1*1*3*4*1#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

