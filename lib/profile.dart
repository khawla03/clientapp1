import 'dart:async';

import 'Bienvenue.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Profile extends StatelessWidget {
  String _nom = 'Berkane',
      _prenom = 'Wided',
      _email = 'iw_berkane@esi.dz',
      _telephone = '066666666';
  /*Profile(String nom,String prenom,String email,String telephone, {Key? key},) : super(key: key){
    this._nom=nom;
    this._prenom=prenom;
    this._email=email;
    this._telephone=telephone;
  }*/
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
          'Mon Profile',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
        actions: [
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ModifyInfo()));
            }, //modifier les informations
            child: const Icon(Icons.edit, color: Colors.white),
            padding: EdgeInsets.only(left: 50, right: 15, top: 10, bottom: 10),
          ),
        ],
      ),
      drawer:AppDrawer(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0), //
              child: Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    width: 200,
                    height: 100,
                    /*decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(50.0)),*/
                    child: Icon(Icons.person, color: Colors.blue, size: 100)),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          ListTile(
            leading: Icon(Icons.person_outline, color: Colors.blue),
            title: Text(
              ' $_nom',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outline, color: Colors.blue),
            title: Text(
              '$_prenom',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined, color: Colors.blue),
            title: Text(
              '$_email',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone_outlined, color: Colors.blue),
            title: Text(
              '$_telephone',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 50,
            width: 270,
            child:  TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Changer le mot de passe'),
                  content: Container(
                    width: 260.0,
                    height: 350.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xFFFFFF),
                      borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // dialog top
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Container(
                                // padding: new EdgeInsets.all(10.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: const Text(
                                  'changer le mot de passe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontFamily: 'helvetica_neue_light',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 30, bottom: 0),
                          child: TextField(
                            //keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF673695),
                                ),
                              ),
                              labelText: 'Mot de passe actuel',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 5, bottom: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF673695),
                                ),
                              ),
                              labelText: 'Nouveau mot de passe',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 5, bottom: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF673695),
                                ),
                              ),
                              labelText: 'Confirmer le nouveau mot de passe',
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        // dialog bottom
                        Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFF673695),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => PswrdChanged()));
                            }, //changer le mot de passe
                            child: const Text(
                              'Terminer',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 180,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Color(0xFF673695),
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => Profile()));

                            }, //changer le mot de passe
                            child: const Text(
                              'Annuler',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),),
              child: const Text('Changer le mot de passe',  style: TextStyle(color: Colors.blue, fontSize: 16),),
            ),)


          ,

        ]),
      ),
    );
  }
}


class ModifyInfo extends StatelessWidget {
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
                context, MaterialPageRoute(builder: (_) => Profile()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Modifier mes informations',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0), //
            child: Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  width: 100,
                  height: 100,
                  /*decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(50.0)),*/
                  child: Icon(Icons.person, color: Colors.blue, size: 100)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 30, bottom: 0),
            child: TextField(
              textInputAction: TextInputAction.next,
              //keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF673695),
                  ),
                ),
                labelText: 'Nom',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5, bottom: 0),
            child: TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF673695),
                  ),
                ),
                labelText: 'Prénom',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5, bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF673695),
                  ),
                ),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF673695),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Profile()));
              }, //changer le mot de passe
              child: const Text(
                'Terminer',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
class PswrdChanged extends StatefulWidget {
  @override
  _pswdState createState() => _pswdState();
}
class _pswdState extends State<PswrdChanged> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),
    ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profile())));
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
                context, MaterialPageRoute(builder: (_) => Profile()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Mot de passe changé',
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
            "Mot de passe changé",
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

