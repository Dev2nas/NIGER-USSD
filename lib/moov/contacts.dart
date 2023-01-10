import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class contacts extends StatefulWidget {
  @override
  _contactsState createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  final Uri _url = Uri.parse('https://devnas.netlifly.app');
  Future<void> _web() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

//phoone
  //String telephoneUrl = "tel:+22799326308";
  final Uri telephoneUrl = Uri.parse('tel:+22799326308');
  Future<void> _phone() async {
    if (!await launchUrl(telephoneUrl)) {
      throw 'Could not launch $telephoneUrl';
    }
  }

  //localisation
  final Uri mapUrl = Uri.parse("geo:13.555331,2.095555");
  Future<void> _location() async {
    if (!await launchUrl(mapUrl)) {
      throw 'Could not launch $mapUrl';
    }
  }

  // String email = 'this.is.tijani@gmail.com';
  //String subject = 'This is a test email';
  //String body = 'This is a test email body';
  final Uri emailUrl =
  Uri.parse("mailto:devnas.inc@gmail.com?subject=Préstation&body=Interresé par vos service");
  Future<void> _email() async {
    if (!await launchUrl(emailUrl)) {
      throw 'Could not launch $emailUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('#f38326'),
          title: Text("Contacts",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  backgroundImage: AssetImage('images/profil.png'),
                  radius: 90,
                  backgroundColor: HexColor('##0071bc'),),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //email
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _email();
                    });
                  },
                  icon: Icon(Icons.mail),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('##0071bc'),),
                  label: Text(
                    'devnas.inc@gmail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          //phone
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _phone();
                    });
                  },
                  icon: Icon(Icons.phone),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('##0071bc'),),
                  label: Text(
                    '(+227) 99 32 63 08',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          //web
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _web();
                    });
                  },
                  icon: Icon(Icons.web),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('##0071bc'),),
                  label: Text(
                    'devnas.netlifly.app/',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          //localisation
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _location();
                    });
                  },
                  icon: Icon(Icons.location_on),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('##0071bc'),),
                  label: Text(
                    'Localisation',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 200),),
                  Image.asset('images/icon.png',height: 200,width: 250,)

                ],
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
