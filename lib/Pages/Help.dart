import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  State<StatefulWidget> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Help'),
        ),
        body: Center(child: Text("Pagina en progreso, deja tus dudas al correo: maria.paufer14@gmail.com"),)
    );
  }

}