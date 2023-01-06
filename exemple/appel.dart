import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _callNumber,
          child: Text('Call Number'),
        ),
      ),
    );
  }
}

_callNumber() async{
  const number = '*121#'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}