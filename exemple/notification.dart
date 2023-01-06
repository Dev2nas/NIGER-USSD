import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sms/sms.dart';

void main() {
  runApp(MyApp());
  SmsReceiver receiver = new SmsReceiver();
  receiver.onSmsReceived.listen((SmsMessage msg) => print(msg.body));

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //Interroger les messages SMS
  SmsQuery query = new SmsQuery();
  SmsReceiver receiver = new SmsReceiver();
 // List<SmsMessage> allmessages;
  List<SmsMessage>? allmessages;

  @override
  void initState() {
    getAllMessages();
    SmsReceiver receiver = new SmsReceiver();
    //receiver.onSmsReceived.listen((SmsMessage msg) => print(msg.body));
    receiver.onSmsReceived.listen((SmsMessage msg) => Text(msg.body));
    super.initState();
  }

  void getAllMessages(){
    Future.delayed(Duration.zero,() async {
      //List<SmsMessage> messages = await query.getAllSms;
      List<SmsMessage> messages = await query.getAllSms;
      //Obtenir toutes les conversations de discussions
      List<SmsThread> threads = await query.getAllThreads;
      setState(() { //update UI
        allmessages = messages;
        SmsReceiver receiver = new SmsReceiver();
        //receiver.onSmsReceived.listen((SmsMessage msg) => print(msg.body));
        receiver.onSmsReceived.listen((SmsMessage msg) => Text(msg.body));
      });

      SmsReceiver receiver = new SmsReceiver();
      //receiver.onSmsReceived.listen((SmsMessage msg) => print(msg.body));
      receiver.onSmsReceived.listen((SmsMessage msg) => Text(msg.body));
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            //si la boite est vide
            child: allmessages  == null?
            Column(
              children: [
                Center(
                    child: CircularProgressIndicator(color: HexColor('#ff0000'),),
                ),
                Text('${receiver.onSmsReceived.listen((SmsMessage msg) => Text(msg.body))} received your message.')
              ],
            ):
                //sinon
            Column(
                children:allmessages!.map((messageone){ //populating children to column using map
                  String type = "NONE";  //get the type of message i.e. inbox, sent, draft
                  if(messageone.kind == SmsMessageKind.Received){
                    type = "Inbox";
                  }else if(messageone.kind == SmsMessageKind.Sent){
                    type = "Outbox";
                  }else if(messageone.kind == SmsMessageKind.Draft){
                    type = "Draft";
                  }
                  return Container(
                    child: Card(
                        child: ListTile(
                          leading: Icon(Icons.message),
                          title: Padding(child: Text(messageone.address + " (" + type + ")"),
                              padding: EdgeInsets.only(bottom:10, top:10)
                          ), // printing address
                          subtitle: Padding(child: Text(messageone.date.toString() + "\n" + messageone.body),
                              padding: EdgeInsets.only(bottom:10, top:10)
                          ), //pringint date time, and body
                        )
                    ),
                  );
                }).toList()
            ),
          ),
        )
    );
  }
}