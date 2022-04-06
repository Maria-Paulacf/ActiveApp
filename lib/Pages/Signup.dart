import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'register.dart';
import 'login.dart';
import 'AboutActive.dart';

class SignUp extends StatelessWidget {
  final String title = "Sign Up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
              child: Image.asset('images/active.png'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Ingresa",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Roboto')),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: SignInButton(
                  Buttons.Email,
                  text: "Sign up with Email",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: SignInButtonBuilder(
                    text: 'Sign in with Email',
                    icon: Icons.account_circle_rounded,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    backgroundColor: Colors.orange,)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Disfruta de los servicios que te ofrece Actiot',
                style: TextStyle(color: Color.fromARGB(255, 200, 200, 200)),
              ),
            ),
            TextButton.icon(// About us// text
              label: Text('About Us'),
              icon: Icon(Icons.info_outline),
              style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                    );
                  },
              ),
          ]),
        ));
  }
}