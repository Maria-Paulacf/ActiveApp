import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'register.dart';
import 'login.dart';
import 'AboutActive.dart';
import 'Help.dart';

class SignUp extends StatelessWidget {
  final String title = "Sign Up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
          backgroundColor: Colors.orange,
        ),
        body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/intro2.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.0),BlendMode.colorBurn),
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0,80,10.0,20),
              child: SvgPicture.asset('images/active.svg',
                  width: 180,
                  height: 180),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 20, 30),
              child: Text("ActiveBro",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Roboto')),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: TextButton.icon(// Entrenar
                  label: Text(' Registrate    ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          fontFamily: 'Roboto')),
                  icon: Icon(Icons.email_outlined, size: 20,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade800),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.orange.shade900)
                        )),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child:  TextButton.icon(// Entrenar
                  label: Text(' Ingresa         ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          fontFamily: 'Roboto')),
                  icon: Icon(Icons.account_circle_rounded, size: 20,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.orange.shade600)
                        )),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                )),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Disfruta de los servicios que te ofrece Active',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Row(
              children: <
            Widget>[Padding(
              padding: EdgeInsets.only(top: 100,bottom: 10,right: 150,left: 18),
              child:TextButton.icon(// About us// text
                label: Text('About Us',),
                icon: Icon(Icons.psychology_outlined),
                style: ButtonStyle(
                  //backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                  alignment: Alignment.bottomLeft,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100,bottom: 10,),
              child:TextButton.icon(// About us// text
                label: Text('Help',),
                icon: Icon(Icons.help_outline_outlined),
                style: ButtonStyle(
                  //backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                  alignment: Alignment.bottomLeft,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpPage()),
                  );
                },
              ),
            )])
          ]),
        ),
        )
    );
  }
}