import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Your Account '),
      ),
      body: Center(child: Text(" Profile data "),
      ),
    );
  }
}
