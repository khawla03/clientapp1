import 'historique.dart';
import 'package:flutter/material.dart';
import 'Bienvenue.dart';
import 'profile.dart';
import 'livraisons.dart';
import 'map.dart';
import 'drawer.dart';

class Localisation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
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
              'Carnet d ' 'adresses',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
            ),
            bottom: TabBar(
                isScrollable : true,
              tabs: [
                Tab(
                  text: ("Tous"),
                ),
                Tab(
                  text: ("Domicile"),
                ),
                Tab(
                  text: ("Travail"),
                ),
                Tab(
                  text: ("Point relais"),
                )
              ],

            ),
          ),
          drawer: AppDrawer(),
          body: TabBarView(
            children: [
              ListView(children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]),
              ListView(children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Bienvenue()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Bienvenue()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]),
              ListView(children: [
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Bienvenue()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]),
              ListView(children: [
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text(
                    "El ALia, Bab Ezzouar",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Bienvenue()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => MapSample())),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
