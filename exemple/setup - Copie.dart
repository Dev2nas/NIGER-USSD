import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class setup extends StatelessWidget {
  const setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#e95828"),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Row(
                        children: [
                          Card(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.asset(
                                'images/moov.png',
                                width: 100,
                                height: 100,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: HexColor('#0071bc'),
                              ),
                            ),
                          )
                        ],
                      ),

                      Row(
                        children: [
                          Card(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Image.asset(
                                'images/moov.png',
                                width: 100,
                                height: 100,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: HexColor('#0071bc'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ]),

            ]),
    );
  }
}
