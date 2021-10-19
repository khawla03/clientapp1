import 'package:flutter/material.dart';
import 'dart:async';
import 'inscription.dart';
import 'profile.dart';
import 'bienvenue.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State {
  TextEditingController telephoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    //var screensize = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return

      Scaffold(
        //resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      body: /*SingleChildScrollView(
        child:*/
      SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child:
          Container(
            width: width,
            height: height,
            child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0), //
              child: Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 30.0),
                    width: 161,
                    height: 119,
                    /*decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/logo.png',height: height/5,)),
              ),
            ),
            SizedBox(
              height: height/28,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 25, bottom: 5),
              child: Text(
                "Exigez une livraison de confiance",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),

            SizedBox(
              height: height/14,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 30, bottom: 16),
              child: TextField(
                maxLength: 10,
                textInputAction: TextInputAction.next,
                controller: telephoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF673695),
                      ),
                    ),
                    // icon: Icon(Icons.call),
                    // border: OutlineInputBorder(),

                    // labelText: 'Numéro de tetlephone',
                    hintText: 'Numéro de téléphone'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50.0, top: 0, bottom: 0),
              child: TextField(

                controller: passwordController,
                obscureText:  _isObscure,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF673695),
                      ),
                    ),
                    //icon:Icon(Icons.password),
                    //border: OutlineInputBorder(),
                    //labelText: 'Password',
                    hintText: 'Mot de passe'),
              ),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ForgotPassword()));
              },
              child: Text(
                'Mot de passe oublié',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),

            Container(
              height: height/18,
              width: 150,
              decoration: BoxDecoration(
                  color: Color(0xFF673695),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  //if verification(numero+mot de passe)
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Bienvenue()));
                  // else() login incorrect
                },
                child: const Text(
                  'Se connecter',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: height/18,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("voun n'avez pas de compte ?"),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Number()));
                    },
                    child: Text(
                      'inscrivez-vous !',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  )
                ]))
        ],
      ),
          ),
      /*),*/
    ),
      );
  }
//verification du numéro de telephone et le mot de passe récupérés
//_numero=text(telephoneController)
//_motdepasse=text(passwordController)
//if()....
}

class ForgotPassword extends StatelessWidget {
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
                context, MaterialPageRoute(builder: (_) => Inscription()));
          }, //modifier les informations
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Mot de passe oublié',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 150,
        ),
        Text(
          "Entrez le code reçu :",
          style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'verdana',
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 30),
          child: TextField(
            maxLength: 4,

            // controller: telephoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF673695),
                ),
              ),

              //border: OutlineInputBorder(),

              // labelText: 'Numéro de tetlephone',
              //  hintText: 'Enter number'),
            ),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          height: 60,
          width: 250,
          decoration: BoxDecoration(
              color: Color(0xFF673695),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: () {
              //if verification(numero+mot de passe)
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Bienvenue()));
              // else() login incorrect
            },
            child: const Text(
              'Vérifier le code',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ]),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0), //
            child: Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  width: 161,
                  height: 119,
                  /*decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/logo.png')),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Entrez votre numéro de téléphone :",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'verdana',
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 20, bottom: 20),
            child: TextField(

              maxLength: 10,
              // controller: telephoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF673695),
                  ),
                ),
                //border: OutlineInputBorder(),

                // labelText: 'Numéro de tetlephone',
                //  hintText: 'Enter number'),
              ),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Color(0xFF673695),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                //if verification(numero+mot de passe)
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CodeVerif()));
                // else() login incorrect
              },
              child: const Text(
                'Suivant',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class CodeVerif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0), //
            child: Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  width: 161,
                  height: 119,
                  /*decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('assets/logo.png')),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Entrez le code reçu :",
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'verdana',
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 20, bottom: 20),
            child: TextField(
              maxLength: 4,
              // controller: telephoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF673695),
                  ),
                ),
                // border: OutlineInputBorder(),

                // labelText: 'Numéro de tetlephone',
                //  hintText: 'Enter number'),
              ),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
                color: Color(0xFF673695),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                //if verification(numero+mot de passe)
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Inscription()));
                // else() login incorrect
              },
              child: const Text(
                'Verifier le code',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
