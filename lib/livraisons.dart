// ignore_for_file: deprecated_member_use
import 'dart:async';

import 'package:flutter/material.dart';
import 'Bienvenue.dart';
import 'package:intl/intl.dart';
import 'drawer.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class Livraisons extends StatefulWidget {
  @override
  State<Livraisons> createState() => _LivraisonsState();
}

class _LivraisonsState extends State<Livraisons> {
String vendeur_phone="0672967098";
String livreur_phone="0782755015";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Livraisons en cours',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: ListTile(
        title: Text(
          "Commande #546769   Produit C",
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Detail()));
        },
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}


class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DateTime? selectedDate;
  String display = '';
  String rdv = "N'est pas fixé";
  String vendeur_phone="0672967098";
  String livreur_phone="0782755015";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Livraisons()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title:
        Text(
          'Commande #546767',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'verdana',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        automaticallyImplyLeading: false, // hides leading widget

        actions: [
          //ignore: deprecated_member_use
          FlatButton(
            minWidth: 20,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ModifInfo()));
            }, //RECLAMATION
            child: const Icon(Icons.edit, color: Colors.white),
          ),
          // ignore: deprecated_member_use
          FlatButton(
            minWidth: 20,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Reclamation()));
            }, //MODIFIER LES INFORMATIONS
            child: const Icon(Icons.bolt, color: Colors.white),
          ),
        ],
      ),
      drawer:AppDrawer(),
      body:
      //     Column(children: [
      ListView(
        // itemExtent: 20.0,
        children: [
          Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Id livraison ",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "54678",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Produit           ",
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pc",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Quantité ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "x2",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Type de livraison ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "à domicile",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Date de ramassage ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "20/09/2021",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Wilaya ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Alger",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Commune ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Bab ezzouar",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Adresse ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Soumame, Bab ezzouar",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Paiement ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Panier ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2500",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Livraison ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1500",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total ",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4000",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Livreur ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "wideeed",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Num tél ",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$livreur_phone",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                        width: width -270,
                    ),
                  FlatButton(onPressed:  () async {
              FlutterPhoneDirectCaller.callNumber("$livreur_phone");
            },
                    minWidth:30,
                 child:   Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 30,
                      
                    ),)
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "vendeur ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "orange hassiba",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Num tél ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$vendeur_phone",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: width -270,
                    ),
                    FlatButton(onPressed:  () async {
              FlutterPhoneDirectCaller.callNumber("$vendeur_phone");
            },
                      minWidth: 30,
                 child:   Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 30,
                      
                    ),)
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 5),
              child: Row(
                children: [
                  Text(
                    "Rendez vous   ",
                    style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "$rdv",
                    style:
                    const TextStyle( fontSize: 18),
                  ),
                ],
              ),
            ),
            color: Colors.white,
          ),
          /*Text(
            display,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          ),*/
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 130,
                decoration: BoxDecoration(
                    color: Color(0xFF9E9E9E),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Annuler la commande'),
                      content: const Text(
                          'Voulez vous vraiemnet annuler cette commande ?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Annuler())),
                          },
                          child: const Text(
                            'oui',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        TextButton(
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detail())),
                          },
                          child: const Text(
                            'non',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: const Text(
                    'Annuler',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 45,
                width: 130,
                decoration: BoxDecoration(
                    color: Color(0xFF673695),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    pickDateTime(context);
                  },
                  child: const Text(
                    'Fixer un RDV',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Future pickDateTime(BuildContext context) async {
    final date = await pickDate(context);
    if (date == null) return;

    final time = await pickTime(context);
    if (time == null) return;

    setState(() {
      dateTime = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
    //here
    /*if(dateTime.year==DateTime.now().year && dateTime.month==DateTime.now().month && dateTime.day<=DateTime.now().day && dateTime.hour>=DateTime.now().hour && dateTime.minute>=DateTime.now().minute)
    {*/
    if (dateTime.hour >= 21 || dateTime.hour < 8) {
      if (dateTime.weekday == DateTime.friday ||
          dateTime.weekday == DateTime.saturday) {

        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Rendez-vous'),
            content: const Text(
                "La date et l'heure choisies sont en dehors de la plage autorisée!"),
            actions: <Widget>[
              TextButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  Detail())),
                },
                child: const Text(
                  'ok',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),

            ],
          ),
        );

        setState(() {
          display =
          "La date et l'heure choisies sont en dehors de la plage autorisée!";
        });
      } else {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Rendez-vous'),
            content: const Text(
                'Heure sélectionnée hors la plage horaire!'),
            actions: <Widget>[
              TextButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  Detail())),
                },
                child: const Text(
                  'ok',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),

            ],
          ),
        );

        setState(() {
          display = 'Heure sélectionnée hors la plage horaire!';
        });
      }
    } else {
      if (dateTime.weekday == DateTime.friday ||
          dateTime.weekday == DateTime.saturday) {

        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Rendez-vous'),
            content: const Text(
                'La date choisie est en dehors de la plage autorisée!'),
            actions: <Widget>[
              TextButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>  Detail())),
                },
                child: const Text(
                  'ok',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),

            ],
          ),
        );

        setState(() {
          display = 'La date choisie est en dehors de la plage autorisée!';
        });
      } else
        setState(() {
          (display = '');
          rdv = DateFormat('MM/dd/yyyy HH:mm').format(dateTime);
        });
    }
  //}
  }
  DateTime dateTime = DateTime.now();
  Future<DateTime> pickDate(BuildContext context) async {
    //final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime.now().subtract(Duration(days: 0)),
      lastDate: DateTime.now().add(Duration(days: 15)),

    );

    if (newDate == null) return DateTime.now();

    return newDate;
  }

  Future<TimeOfDay?> pickTime(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: dateTime != null
          ? TimeOfDay(hour: dateTime.hour, minute: dateTime.minute)
          : initialTime,
    );

    //if (newTime == null) return null;

    return newTime;
  }

  String getText() {
    if (dateTime == null) {
      return 'Select DateTime';
    } else {
      return DateFormat('MM/dd/yyyy HH:mm').format(dateTime);
    }
  }
}

class ModifInfo extends StatefulWidget {
  const ModifInfo({Key? key}) : super(key: key);

  @override
  _ModifState createState() => _ModifState();
}

class _ModifState extends State<ModifInfo> {
  String dropdownValue = 'à domicile';
  String _nom="Bekane",_prenom="wided",_phone="0677543215";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Livraisons()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title:
        Text(
          'Modifier les informations',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'verdana',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        automaticallyImplyLeading: false, // hides leading widget
      ),
      drawer: AppDrawer(),
      body: ListView(
          children: [
            const Text(
              "\n   Commande #1234",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'verdana',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20, left: 20, bottom: 0),
              child: Text(
                'Nom',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'verdana',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 0, bottom: 0),
              child: TextField(
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF673695),
                    ),
                  ),
                  hintText: '$_nom',
                  //  labelText: 'Nom',

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20, left: 20, bottom: 0),
              child: Text(
                'Prénom',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'verdana',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 0, bottom: 0),
              child: TextField(
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF673695),
                      ),
                    ),

                    hintText: '$_prenom'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20, left: 20, bottom: 0),
              child: Text(
                'Numéro de téléphone',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'verdana',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 0, bottom: 0),
              child: TextField(
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF673695),
                    ),
                  ),

                  hintText: '$_phone',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 5),
              child: Text(
                'Mode de livraison :',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'verdana',
                ),
              ),
            ),
            Container(
              width: 200, //MediaQuery.of(context).size.width,
              color: Colors.white54,
              padding: const EdgeInsets.only(bottom: 0, left: 20, right: 20),
              //margin: const EdgeInsets.only(bottom: 0),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                dropdownColor: Colors.white,
                isExpanded: true,
                underline: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF673695),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['à domicile', 'point relais']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(' $value'),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20, left: 20, bottom: 0),
              child: Text(
                'Adresse',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'verdana',
                ),
              ),
            ),


            ListTile(

              title: Text(" soumame, bab ezzouar" ),

              trailing:
              // ignore: deprecated_member_use
              FlatButton(
                minWidth: 20,
                onPressed: () {
                  //    pickDateTime(context);
                }, //modifier l'adresse
                child: const Icon(Icons.edit,color:Colors.blue),
              ),


            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,right: 20, left: 20, bottom: 0),
              child:
              Container(
                height: 1,
                color: Color(0xFF673695),
              ),),



            Padding(
              padding: const EdgeInsets.only(top: 0,right: 20, left: 20, bottom: 0),
              child:
              Container(
                height: 1,
                color: Color(0xFF673695),
              ),),






          ]
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF673695),
        child: TextButton(
          onPressed: () {
            /*Navigator.push( context, MaterialPageRoute(builder: (_) => ChangePassword()));*/
          }, //changer le mot de passe
          child: const Text(
            'Mettre à jour',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );

  }

}
class Annuler extends StatefulWidget {
  const Annuler({Key? key}) : super(key: key);

  @override
  _AnnulerState createState() => _AnnulerState();
}

class _AnnulerState extends State<Annuler> {
  List<bool> isSelected = List.generate(7, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Detail()));
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'Annulation',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, bottom: 5),
            child: const Text(
              "\nAnnulation de la commande ",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'verdana',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 5),
            child: Text(
              "\nPourquoi voulez-vous annuler cette commande ?\n ",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
            ),
          ),

          ToggleButtons(
            selectedBorderColor: Color(0xFF673695),
            borderWidth: 2,
            selectedColor: Color(0xFF673695),
            fillColor: Color(0x1F673695),
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              //fontWeight: FontWeight.bold,
              fontSize: 17,
              fontFamily: 'verdana',
            ),
            children: const [
              Text('Je suis en déplacement'),
              Text("Je n'ai pas d'argent"),
              Text("J'ai déjà acheté ce produit ailleurs"),
              Text("Retard de livraison"),
              Text("Livreur ne m'a pas contacté"),
              Text("RDV raté par le livreur"),
              Text("Comportement du livreur"),
            ],
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                buttonIndex < isSelected.length;
                buttonIndex++) {
                  if (buttonIndex == index) {
                    isSelected[buttonIndex] = true;
                  } else {
                    isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            isSelected: isSelected,
            direction: Axis.vertical,
          ),

          Padding(
            padding:
            EdgeInsets.only(left: 120, right: 120, top: 20, bottom: 20),
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xFF673695),
              ),
              // ignore: deprecated_member_use

              child:
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  //if(email valide + les champs ne sont pas vides: creation du compte )
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CmdAnnule()));
                },
                child: const Text(
                  'Annuler',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Reclamation extends StatefulWidget {
  const Reclamation({Key? key}) : super(key: key);

  @override
  _ReclamationState createState() => _ReclamationState();
}

class _ReclamationState extends State<Reclamation> {
  List<bool> isSelected = List.generate(8, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Detail()));
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'Reclamation',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only( left: 20,right: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only( left: 0),
            child: const Text(
              "\nReclamation sur la commande ",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                fontFamily: 'verdana',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( bottom: 5),
            child: const Text(
              "\nPourquoi voulez-vous passer une reclamation ?\n ",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
            ),
          ),

          ToggleButtons(
            selectedBorderColor: Color(0xFF673695),
            borderWidth: 1,
            selectedColor: Color(0xFF673695),
            fillColor: Color(0x1F673695),
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              //fontWeight: FontWeight.bold,
              fontSize: 17,
              fontFamily: 'verdana',
            ),
            children: [
               Text('Comportement du livreur'),
              Text("Commande annulée sans etre informé"),
              Text("Commande en retard"),
              Text("Rendez-vous raté par le livreur"),
              Text("Livreur ne m'a pas contacté"),
              Text("Erreur sur le produit"),
              Text("Qualité du produit insatisfaisante"),
              Text("Problème de bon d'achat"),

            ],
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                buttonIndex < isSelected.length;
                buttonIndex++) {
                  if (buttonIndex == index) {
                    isSelected[buttonIndex] = true;
                  } else {
                    isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            constraints: BoxConstraints(minHeight: 30.0 , minWidth: MediaQuery.of(context).size.width - 100,maxWidth: MediaQuery.of(context).size.width - 100),
            isSelected: isSelected,
            direction: Axis.vertical,
          ),
          SizedBox(height: 40,),
          TextField(
            decoration: InputDecoration(

              labelText: '  Vous avez quelque chose à rajouter?',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF673695)),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF673695),
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF673695),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => RecAnnule()));
          }, //changer le mot de passe
          child: const Text(
            'Soumettre',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class CmdAnnule extends StatefulWidget {

  @override
  _annulState createState() => _annulState();
}
class _annulState extends State<CmdAnnule> {
  @override
  void initState(){
  super.initState();
  Timer(Duration(seconds: 1),
  ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Livraisons())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Livraisons()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Annulation',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 60),
          Image.asset('assets/check.png'), //checkk
          Text(
            "Commande annulée",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xFF673695),
              fontSize: 18,
              fontFamily: 'verdana',
            ),
          ),
        ]),
      ),
    );
  }
}

class RecAnnule extends StatefulWidget {
  @override
  _recState createState() => _recState();
  }
  class _recState extends State<RecAnnule> {
  @override
  void initState(){
  super.initState();
  Timer(Duration(seconds: 1),
  ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Livraisons())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Livraisons()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Reclamation',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 60),
          Image.asset('assets/check.png'), //checkk
          Text(
            "Réclamation envoyée",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xFF673695),
              fontSize: 18,
              fontFamily: 'verdana',
            ),
          ),
        ]),
      ),
    );
  }
}
