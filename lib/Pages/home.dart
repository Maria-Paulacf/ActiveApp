import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';
import 'Training.dart';

class Home extends StatelessWidget {
  Home({this.uid});
  final String? uid;
  final String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                FirebaseAuth auth = FirebaseAuth.instance;
                auth.signOut().then((res) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                          (Route<dynamic> route) => false);
                });
              },
            )
          ],
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10,0,10,10),
                      child: SvgPicture.asset('images/notyet.svg'),
                    ),
                  ),
                  Padding(// Que ofrecemos?
                    //alignment: Alignment.centerRight,
                      padding: EdgeInsets.fromLTRB(30, 10, 20, 20),
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text("¿Qué deseas hacer?",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                fontFamily: 'Roboto')),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: TextButton.icon(// Entrenar
                      label: Text('Entrenar  ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                              fontFamily: 'Roboto')),

                      icon: Icon(Icons.accessibility_rounded,
                        size: 30,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.orange)
                            )),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrainingPage()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: TextButton.icon(// Ver Resumen
                      label: Text('Resumen  ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                              fontFamily: 'Roboto')),

                      icon: Icon(Icons.timer,
                        size: 30,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.orange)
                            )),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrainingPage()),
                        );
                      },
                    ),
                  ),
                  Padding( // Progreso
                    padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: TextButton.icon(// Ver progreso
                      label: Text('Progreso  ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                              fontFamily: 'Roboto')),

                      icon: Icon(Icons.timeline_outlined,
                        size: 30,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.orange)
                            )),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrainingPage()),
                        );
                      },
                    ),
                  ),
                  Padding( // Progreso
                    padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: TextButton.icon(// Ver progreso
                      label: Text('Actividad  ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                              fontFamily: 'Roboto')),

                      icon: Icon(Icons.calendar_today_outlined,
                        size: 30,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(color: Colors.orange)
                            )),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TrainingPage()),
                        );
                      },
                    ),
                  ),
                ]
            ),
        ),
        drawer: NavigateDrawer(uid: this.uid));
  }
}

class NavigateDrawer extends StatefulWidget {
  final String? uid;
  NavigateDrawer({Key? key, this.uid}) : super(key: key);
  @override
  _NavigateDrawerState createState() => _NavigateDrawerState();
}


class _NavigateDrawerState extends State<NavigateDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.home, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Home'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home(uid: widget.uid)),
              );
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.settings, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Settings'),
            onTap: () {
              print(widget.uid);
            },
          ),
        ],
      ),
    );
  }
}