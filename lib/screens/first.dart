import 'package:flutter/material.dart';
import 'dart:async';

class FirstScreen extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}
class _FirstState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return

 Scaffold(
        backgroundColor: Color(0xff673695),

        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Expanded( child:
              Positioned(
                top: 20,
                child: Image.asset(
                  'assets/first.png', width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                ),
              ),
            //),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Bienvenu ! ',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: 'roboto',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox( height: 10, ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Un savoir faire',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'roboto',
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox( height: 10, ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Une histoire',
                    style: TextStyle(
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
                    Icon(Icons.circle, color: Color(0xff00AEEF),size: 15,),
                    SizedBox( width: 15.0, ),
                    Icon(Icons.circle, color: Colors.white,size: 15,),
                    SizedBox( width: 15.0, ),
                    Icon(Icons.circle, color: Colors.white,size: 15,)
                  ]
              ),
            ),
          ],

      ),);
  }
}