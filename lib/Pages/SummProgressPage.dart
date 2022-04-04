import 'package:flutter/material.dart';

class SummProgressPage extends StatefulWidget {
  State<StatefulWidget> createState() => _SummProgressPageState();
}

class _SummProgressPageState extends State<SummProgressPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Progress'),
      ),
      body: Center(child: Text(" Aqui encontrarás resumen de la sesión"),
      ),
    );
  }
}
