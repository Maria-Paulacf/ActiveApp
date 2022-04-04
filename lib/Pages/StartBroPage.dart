import 'package:flutter/material.dart';

class StartBroPage extends StatefulWidget {
  State<StatefulWidget> createState() => _StartBroPageState();
}

class _StartBroPageState extends State<StartBroPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Training'),
      ),
      body: Center(child: Text(" Selecciona el ejericio que deseas realizar"),
      ),
    );
  }
}