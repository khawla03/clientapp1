import 'package:flutter/material.dart';
import 'dart:async';

class SecondScreen extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}
class _SecondState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff673695),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Positioned(
              top: 20,
              child: Image.asset(
                'assets/second.png',
                alignment: Alignment.center,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Livraison de proximité ',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'roboto',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox( height: 10, ),

              SizedBox( height: 10, ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'On vous offre deux mode de \nlivraison :à domicile, à travers un \nréseau de points de relais',
                  style: TextStyle(
                    height: 2,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'roboto',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox( height: 50, ),
          Container(padding:EdgeInsets.only(bottom: 20) ,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, color: Colors.white,size: 15,),
                  SizedBox( width: 15.0, ),
                  Icon(Icons.circle, color: Color(0xff00AEEF),size: 15,),
                  SizedBox( width: 15.0, ),
                  Icon(Icons.circle, color: Colors.white,size: 15,)
                ]
            ),
          ),
        ],
      ),
    );
  }
}
