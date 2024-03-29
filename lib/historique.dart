import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bienvenue.dart';
import 'drawer.dart';
import 'livraisons.dart';
import 'rating.dart';
import 'demande.dart';

class Historique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
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
              'Historique',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'verdana',
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  //child: Icon(Icons.check,color: Colors.green,),
                  text: ("Effectuées"),
                ),
                Tab(
                  // child: Icon(Icons.cancel,color: Colors.red,),
                  text: ("Annulées"),
                ),
              ],
            ),
          ),
          drawer: AppDrawer(),
          body: TabBarView(
            children: [
              ListView(children: [
                ListTile(
                  title: Text(
                    "Commande #546769   Produit C",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailEffect()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text(
                    "Commande #546767   Produit B",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailEffect()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]),
              ListView(children: [
                ListTile(
                  title: Text(
                    "Commande #546767   Produit B",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailAnnuler()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text(
                    "Commande #546768   Produit A",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailAnnuler()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailEffect extends StatefulWidget {
  const DetailEffect({Key? key}) : super(key: key);

  @override
  _DetailEffectState createState() => _DetailEffectState();
}

class _DetailEffectState extends State<DetailEffect> {
  double rating = 1;
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
                context, MaterialPageRoute(builder: (_) => Historique()));
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
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
      ),
      drawer: AppDrawer(),
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
                            "Produit ",
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
                        "0675642312",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 100,
                      ),
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
                        "0673333333",
                        style: TextStyle(fontSize: 18),
                      ),

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


            SizedBox(
              height: 15,
            ),

                SizedBox(
                  height: 10,
                ),
                 Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, bottom: 5),
                    child:
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

                            onPressed: () => {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => evaluation())),
                            },
                            child: const Text(
                              'Evaluer',
                              style: TextStyle(color: Colors.black, fontSize: 16),
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Demande()));
                            },
                            child: const Text(
                              "Demande",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ]),
    );
  }
}

class DetailAnnuler extends StatefulWidget {
  const DetailAnnuler({Key? key}) : super(key: key);

  @override
  _DetailAnnulerState createState() => _DetailAnnulerState();
}

class _DetailAnnulerState extends State<DetailAnnuler> {

  String annulateur = "Le vendeur";
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            /*   Navigator.push(
                context, MaterialPageRoute(builder: (_) => Livraisons()));*/
          },
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
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
      ),
      drawer: AppDrawer(),
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
                            "Produit ",
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
                        "0675642312",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 100,
                      ),
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
                        "0673333333",
                        style: TextStyle(fontSize: 18),
                      ),

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
                      "Annulée par ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "$annulateur",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              color: Colors.white,
            ),

            SizedBox(
              height: 15,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 8, top: 8, bottom: 5),
             child:
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
                  
                          onPressed: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => evaluation())),
                          },
                          child: const Text(
                            'Evaluer',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          
                        ),
                        ),
                     
                  
                 

                ],
                    ),
                    ),
          ]),
    );
  }
}
class evaluation extends StatefulWidget {
  const evaluation ({Key? key}) : super(key: key);

  @override
  _EvaState createState() => _EvaState();
}

class _EvaState extends State<evaluation> {
  double rating1=1;
  double rating2=0;
  double rating3=0;
@override
  Widget build(BuildContext context) {
    return 
    Scaffold(
appBar: AppBar(
        backgroundColor: Color(0xFF673695),
        leading:
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Historique()));
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
        automaticallyImplyLeading: false,), 
 body:   ListView(
      children: [
        
        Padding(
                padding: const EdgeInsets.all(8.0),
                child:
        Text(' Evaluer votre éxperience',
                        textAlign:TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xFF673695),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'verdana',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),),
          SizedBox(height: 10,),
        Card(
              color: Colors.white,
             child: Padding(
              padding: const EdgeInsets.all(8.0),
                child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
Text( 'Saisfait de notre service?',
                        textAlign:TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'verdana',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 3,),
                      StarRating(
                        rating: rating1,
                        onRatingChanged: (rating) =>
                            setState(() => rating1 = rating),
                      ),
              SizedBox(height: 10,),
Text('Comment était notre livreur?',
                        textAlign:TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'verdana',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 3,),
                      StarRating(
                        rating: rating2,
                        onRatingChanged: (rating) =>
                            setState(() => rating2 = rating),
                      ),
      SizedBox(height: 10,),

        
                 Text(
                        'Comment était le produit?',
                        textAlign:TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'verdana',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 3,),
                      StarRating(
                        rating: rating3,
                        onRatingChanged: (rating) =>
                            setState(() => this.rating3 = rating),
                      ),

                      SizedBox(height: 10),]),),),
                     SizedBox(height: 10), 

                   Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
               TextField(keyboardType: TextInputType.multiline,
  maxLines: 3,
            decoration: InputDecoration(

              hintText: ' Vous avez quelque chose à rajouter?',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF673695)),
              ),
              enabledBorder: 
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF673695),
                ),
              ),
            ),
          )),),
          FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => evaluation()));
                    },
                    child: Text(
                      'Vous avez une réclamation?',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  )
          ]),

      bottomNavigationBar: Container(
        color: const Color(0xFF673695),
        child: TextButton(
          onPressed: () {
            Navigator.push( context, MaterialPageRoute(builder: (_) => Reclamation()));
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

