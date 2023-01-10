import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class apropos extends StatefulWidget {
  @override
  _aproposState createState() => _aproposState();
}

class _aproposState extends State<apropos> {
  List<AnimatedTextExample>? _examples;
  int _index = 0;
  @override
  void initState() {
    super.initState();
    _examples = animatedText(onTap: () {
      print('Tap Event');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final animatedTextExample = _examples![_index];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor('#3ba436'),
          title: Text("A propos du développeur",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ))),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                              backgroundImage: AssetImage('images/profil.png'),
                              radius: 80,
                              backgroundColor:
                              HexColor('#3ba436'),),
                          animatedTextExample.child,
                          Image.asset(
                            'images/social.png',
                            width: 150,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/devnas-logo.png',
                            width: 150,
                            height: 40,
                          ),
                          Text(
                            'OUMAROU SEINI',
                              style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#3ba436'))
                          ),
                          Text(
                            'Abdoulnasser',
                              style: GoogleFonts.lato(
                                  fontSize: 20,)
                          ),
                          Image.asset(
                            'images/niger.jpg',
                            height: 80,
                            width: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('A propos de moi :',
                        style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hi je suis freelance très intéressé par le secteur informatique et développement des applications de gestion, je suis particulièrement sensible à la gestion des bases de données,la conceptionet le développement web, la création des identités visuelles pour les entreprises ainsi que l’administration des systèmes d’information.',
                          textAlign: TextAlign.center,
                          maxLines: 18,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,)
                        ),
                      )),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/langue.png',width: 300,)
                ],
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

class AnimatedTextExample {
  final String label;
  final Color color;
  final Widget child;

  const AnimatedTextExample({
    required this.label,
    required this.color,
    required this.child,
  });
}

List<AnimatedTextExample> animatedText({required VoidCallback onTap}) =>
    <AnimatedTextExample>[
      AnimatedTextExample(
        label: 'PORTFOLIO APP',
        color: Colors.black,
        child: SizedBox(
          width: 100.0,
          child: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 20.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Hello world',
                    cursor: '..</>',
                    curve: Curves.linear,
                    speed: const Duration(milliseconds: 200),
                    textStyle:
                    TextStyle(color: Color.fromRGBO(241, 54, 80, 1.0))),
              ],
              onTap: onTap,
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
        ),
      ),
    ];
