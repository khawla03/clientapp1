import 'package:flutter/material.dart';
import 'bienvenue.dart';

class Demande extends StatefulWidget {
  const Demande({Key? key}) : super(key: key);

  @override
  _DemandeState createState() => _DemandeState();
}

class _DemandeState extends State<Demande> {
  //var demande = new Map();
  List<bool> isSelected = List.generate(3, (_) => false);
  String raisonDemande = 'autre';
  String dropdownValue = 'Demande d\'échange';
  String comande = 'Commande #1234';
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
          '$comande',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: ListView(
        padding:const EdgeInsets.only(right: 20, left: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,  bottom: 5),
            child: Text(
              'Type de la demande :',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
            ),
          ),
          Container(
            width: 200, //MediaQuery.of(context).size.width,
            color: Colors.white54,

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
              items: <String>['Demande d\'échange', 'Damande de récupération']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(' $value'),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.only(top: 20,  bottom: 5),
            child: Text(
              'Pourquoi voulez-vous faire un échange / une récupération de ce colis ?',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
            ),
          ),
          SizedBox(height: 20,),
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
            children: const [
              Text('Erreur sur le produit'),
              Text('Produit défectueux'),
              Text('Autre')
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
          SizedBox(height: 50,),
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
          )
        ],
      ),

      bottomNavigationBar: Container(
        color: const Color(0xFF673695),
        child: TextButton(
          onPressed: () {
            /*Navigator.push( context, MaterialPageRoute(builder: (_) => ChangePassword()));*/
          }, //changer le mot de passe
          child: const Text(
            'SOUMETTRE',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
