import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  State<StatefulWidget> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Forgot password'),
        ),
        body: Center(child: Text("Haz olvidado tu contraseña ajio"),)
    );
  }

}