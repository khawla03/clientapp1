
import 'historique.dart';
import 'package:flutter/material.dart';
import 'bienvenue.dart';
import 'profile.dart';
import 'localisation.dart';
import 'livraisons.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF673695),
              ),
              child: Column(children: [
                Icon(Icons.person, color: Colors.white, size: 80),
                Text(
                  'wided berkane\niw_berkane@esi.dz',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'verdana',
                  ),
                ),
              ])),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color(0xFF00AEEF),
              size: 30,
            ),
            title: const Text(
              'Mon compte',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Profile()))
            }, //mon compte
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on_sharp,
              color: Color(0xFF00AEEF),
              size: 30,
            ),
            title: const Text(
              'Carnet d ' 'adresses',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Localisation()))
            }, //adresses
          ),
          ListTile(
            leading: const Icon(
              Icons.delivery_dining,
              color: Color(0xFF00AEEF),
              size: 30,
            ),
            title: const Text(
              'Liraisons en cours',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Livraisons()))
            }, //Liv en cours
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_today,
              color: Color(0xFF00AEEF),
              size: 30,
            ),
            title: const Text(
              'Rendez-vous',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Bienvenue()))
            }, //RDV
          ),
          ListTile(
            leading: const Icon(
              Icons.history,
              color: Color(0xFF00AEEF),
              size: 30,
            ),
            title: const Text(
              'Historique',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Historique()))
            }, //mon historique
          ),
        ],
      ),
    );
  }
}
