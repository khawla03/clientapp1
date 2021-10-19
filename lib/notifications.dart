import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bienvenue.dart';
import 'drawer.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
            // ignore: deprecated_member_use
            FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Bienvenue()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: ListView(children: [

        Notif(
          notifID: 'command #457820',
          notiftext: 'La commande ID 547820 a été annulée par le vendeur.',
        ),
        Notif(
          notifID: 'command #457820',
          notiftext: 'La commande ID 547820 a été annulée par le livreur.',
        ),
      ]),
    );
  }
}

class Notif extends StatelessWidget {
  Notif({required this.notifID, this.notiftext});
  String? notifID;
  String? notiftext;
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
        Text('$notifID',
          style: const TextStyle(
          decoration: TextDecoration.none,
          color: Color(0xFF673695),
          fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'verdana',
        ),),
        SizedBox(height: 10,),
        Text('$notiftext',
          style: const TextStyle(
          decoration: TextDecoration.none,
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'verdana',
        ),),
            SizedBox(height: 10,),
            Container(color:Color(0xFF673695),height: 2,width: MediaQuery.of(context).size.width,)
      ],
    ));
  }
}
