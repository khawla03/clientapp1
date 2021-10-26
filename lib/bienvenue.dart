import 'localisation.dart';
import 'package:flutter/material.dart';
import 'livraisons.dart';
import 'demande.dart';
import 'profile.dart';
import 'notifications.dart';
import 'drawer.dart';

class Bienvenue extends StatelessWidget{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: ()  => _scaffoldKey.currentState!.openDrawer(),),
        actions: [
          FlatButton(
            minWidth: 20,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Notifications()));
            }, //RECLAMATION
            child: const Icon(Icons.notifications,color: Colors.white,),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 150,
                child :Text("\n\nBienvenue !", textAlign: TextAlign.left,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 24.0)),),
                Container(
                  width: 150,
                ),
]),
          SizedBox(height: 50,),
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[

      Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 10),//
            child: Container(
height: 150,
width: 150,//color: Colors.white54,

              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child:
                  FlatButton( onPressed: () {
                    //if(email valide + les champs ne sont pas vides: creation du compte )
                    Navigator.push( context, MaterialPageRoute(builder: (_) => Profile())); },
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/user.png",width: 64.0,),
                          SizedBox(height: 10.0,),
                          // ignore: deprecated_member_use
                          const  Text("Mon Compte",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                          ),
                        ]),),

                ),
              ),

            ),
          ),

          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 10),//
            child: Center( child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:
              FlatButton( onPressed: () {
                //if(email valide + les champs ne sont pas vides: creation du compte )
                Navigator.push( context, MaterialPageRoute(builder: (_) => Localisation())); },
                child:
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/book.png",width: 64.0,),
                        SizedBox(height: 5.0,),
                        // ignore: deprecated_member_use
                        const  Text("Carnet d'adresses",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),


                      ],
                    ),

                  ),
                ),

              ),
            ),
            ),)
          ,]),
        SizedBox(height: 10,),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 0),//
            child: Center( child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:
              FlatButton( onPressed: () {
                //if(email valide + les champs ne sont pas vides: creation du compte )
                Navigator.push( context, MaterialPageRoute(builder: (_) => Livraisons())); },
                child:Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/livraison.png",width: 64.0,),
                        SizedBox(height: 5.0,),
                        // ignore: deprecated_member_use
                        const  Text("Livraisons en cours",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),




                      ],),
                  ),
                ),

              ),
            ),
            ),),

          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 0),//
            child: Center( child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  FlatButton( onPressed: () {
                    //if(email valide + les champs ne sont pas vides: creation du compte )
                    Navigator.push( context, MaterialPageRoute(builder: (_) => Bienvenue())); },
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/calendar.png",width: 64.0,),
                        SizedBox(height: 5.0,),
                        // ignore: deprecated_member_use
                        const  Text("Rendez-vous",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),

                      ],),
                  ),
                ),

              ),
            ),
            ),),
         ] ),
        ]),
      ),);

 /*     GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        childAspectRatio: (6/5),),

        children: <Widget>[
          Text("\n\n   Bienvenue !", textAlign: TextAlign.left,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 24.0)),

          Container(// 2nd grid element ( empty )
            ),

          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 10),//
             child: Container(

              //color: Colors.white54,

                decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0,1), // changes position of shadow
            )],

              borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child:
                  FlatButton( onPressed: () {
                    //if(email valide + les champs ne sont pas vides: creation du compte )
                    Navigator.push( context, MaterialPageRoute(builder: (_) => Profile())); },
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/user.png",width: 64.0,),
                      SizedBox(height: 10.0,),
                      // ignore: deprecated_member_use
                       const  Text("Mon Compte",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),
                      ]),),

                  ),
                ),

              ),
            ),

          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 10),//
            child: Center( child: Container(

              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:
              FlatButton( onPressed: () {
                //if(email valide + les champs ne sont pas vides: creation du compte )
                Navigator.push( context, MaterialPageRoute(builder: (_) => Localisation())); },
                child:
                Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/book.png",width: 64.0,),
                      SizedBox(height: 5.0,),
                      // ignore: deprecated_member_use
                      const  Text("Carnet d'adresses",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),


                    ],
                  ),

                ),
                ),

              ),
            ),
            ),)
          ,
          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 0),//
            child: Center( child: Container(

              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:
              FlatButton( onPressed: () {
                //if(email valide + les champs ne sont pas vides: creation du compte )
                Navigator.push( context, MaterialPageRoute(builder: (_) => Livraisons())); },
                child:Center(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/livraison.png",width: 64.0,),
                      SizedBox(height: 5.0,),
                      // ignore: deprecated_member_use
                       const  Text("Livraisons en cours",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),




                    ],),
                  ),
                ),

              ),
            ),
            ),),

          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 0),//
            child: Center( child: Container(
              decoration: BoxDecoration( color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,1), // changes position of shadow
                )],

                  borderRadius: BorderRadius.all( Radius.circular(10) ) ),

              child:Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  FlatButton( onPressed: () {
                    //if(email valide + les champs ne sont pas vides: creation du compte )
                    Navigator.push( context, MaterialPageRoute(builder: (_) => Bienvenue())); },
                    child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/calendar.png",width: 64.0,),
                      SizedBox(height: 5.0,),
                      // ignore: deprecated_member_use
                       const  Text("Rendez-vous",textAlign: TextAlign.center,style: TextStyle( color: Color(0xFF673695),fontWeight: FontWeight.bold,fontSize: 18.0),
                        ),

                    ],),
                  ),
                ),

              ),
            ),
            ),),
          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 0),//
            child: Center( child: Container(
            ),
            ),),

          Padding( padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 0, bottom: 0),//
              child: Center( child: Container())),




        ],


      ),*/









  }
}