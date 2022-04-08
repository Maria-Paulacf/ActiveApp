import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:activebro/Pages/home.dart';
import 'package:activebro/Pages/Signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ActiveSys',
      theme: ThemeData(
          primaryColor: Colors.orange,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Roboto',
          buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            buttonColor: Colors.orange,
          )
      ),
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? result = FirebaseAuth.instance.currentUser;
    return new SplashScreen(
        useLoader: true,
        loadingTextPadding: EdgeInsets.all(0),
        loadingText: Text(""),
        navigateAfterSeconds: result != null ? Home(uid: result.uid) : SignUp(),
        seconds: 5,
        title: new Text(
          'Welcome To ActiveBro',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.orange.shade900),
          textAlign: TextAlign.center ,
        ),
        image: Image.asset('images/active.png', fit: BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("flutter"),
        loaderColor: Colors.orange);
  }
}