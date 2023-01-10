import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class journalier extends StatelessWidget {
  const journalier({Key? key}) : super(key: key);

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
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "40 Mo",
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
        //150f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _150f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "150F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "60Mo",
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
        //200f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _200f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "200F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "100Mo",
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
        //300f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _300f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "300F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "150Mo",
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
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "650Mo",
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
        //1000f
        Padding(
          padding:
          const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
          child: Center(
            child: Card(
              child: ElevatedButton(
                onPressed: () {
                  _1000f();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          "1000F",
                          style: GoogleFonts.lato(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "1.5Go",
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

_100f() async {
  const number = '*888*1*1*1*1*1#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}
_200f() async {
  const number = '*888*1*1*1*1*2#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_500f() async {
  const number = '888*1*1*1*1*3'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_1000f() async {
  const number = '888*1*1*1*1*4'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_150f() async {
  const number = '888*1*1*1*1*5'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

_300f() async {
  const number = '888*1*1*1*1*6'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}