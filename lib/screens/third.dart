import 'package:flutter/material.dart';
import 'dart:async';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}
class _ThirdState extends State<ThirdScreen> {
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
                'assets/third.png',
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
                  'Un suivi de colis',
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
                  'Vous pouvez en tout moment \nsuivi l’état de la livraison en cours \net modifier ses informations',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20,
                    height: 2,
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
                  Icon(Icons.circle, color: Colors.white,size: 15,),
                  SizedBox( width: 15.0, ),
                  Icon(Icons.circle, color: Color(0xff00AEEF),size: 15,)
                ]
            ),
          ),
        ],
      ),
    );
  }
}