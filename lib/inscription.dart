import 'package:flutter/material.dart';
import 'dart:async';

import 'Bienvenue.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();

}
class _InscriptionState extends State
{ bool _isObscure = true;
  @override
  Widget build(BuildContext context)
  {
    return
      Scaffold( backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
            Padding( padding: const EdgeInsets.only(top: 30.0),//
              child: Center( child: Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  width: 161, height:119, /*decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/logo.png')),
              ),
            ),
            SizedBox(height: 40,),
             Padding(
              padding:const EdgeInsets.only( left: 30.0, right: 30.0, top: 30, bottom: 0),
              child: Text("Créer un compte")
              ),
           SizedBox(height: 20,),

            Padding(
              padding:const EdgeInsets.only( left: 30.0, right: 30.0, top: 30, bottom: 0),
              child: TextField(
                textInputAction: TextInputAction.next,
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  // icon: Icon(Icons.call),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF673695),),),
                  labelText: 'Nom', ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( left: 30.0, right: 30.0, top: 5, bottom: 0),
              child:TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  //icon:Icon(Icons.password),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF673695),),),
                  labelText: 'Prénom',
                ),
              ),
            )
            ,
            Padding(
              padding: const EdgeInsets.only( left: 30.0, right: 30.0, top: 5, bottom: 0),
              child:TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  //icon:Icon(Icons.password),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF673695),),),
                  labelText: 'Email',
                ),
              ),
            )
            ,

            Padding(
              padding: const EdgeInsets.only( left: 30.0, right: 30.0, top: 5, bottom: 50),
              child:TextField( obscureText: _isObscure,
                decoration: InputDecoration(

                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  //icon:Icon(Icons.password),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF673695),),),
                  //border: OutlineInputBorder(),
                  labelText: 'Mot de passe',
                ),
              ),
            )
            ,
            // ignore: deprecated_member_use
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Color(0xFF673695),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              // ignore: deprecated_member_use
              child: FlatButton( onPressed: () {
                //if(email valide + les champs ne sont pas vides: creation du compte )
                Navigator.push( context, MaterialPageRoute(builder: (_) => CompteSucces())); },
                child: const Text( 'Créer', style: TextStyle(color: Colors.white, fontSize: 20), ),
              ),
            ),


          ],
          ),
        ),
      );
  }
}
class CompteSucces extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return
    Scaffold(
 
      body: 
      Center(child: 
      Column(children: [
      
      SizedBox(height:150),
       
      Image.asset('assets/check.png',),//checkk  
      SizedBox(height: 20,),
      Text("\nCompte créé avec succes",style: TextStyle(
            decoration: TextDecoration.none,
            color: Color(0xFF673695),
            fontSize: 18,
            fontFamily: 'verdana',
          ),),
          SizedBox(height:70),
          Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                  color: Color(0xFF673695),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              // ignore: deprecated_member_use
              child: FlatButton( onPressed: () {
                //if(email valide + les champs ne sont pas vides: creation du compte )
                Navigator.push( context, MaterialPageRoute(builder: (_) => Bienvenue())); },
                child: const Text( 'Commencer', style: TextStyle(color: Colors.white, fontSize: 22), ),
              ),
            ),
          ]
      ),
      ),
      );
      }
      }