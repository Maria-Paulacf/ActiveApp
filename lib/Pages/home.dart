import 'package:activebro/Pages/SummProgressPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';
import 'Training.dart';
import 'account.dart';
import 'AboutActive.dart';

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
                          MaterialPageRoute(builder: (context) => SummProgressPage()),
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
                          MaterialPageRoute(builder: (context) => SummProgressPage()),
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
          UserAccountsDrawerHeader(
            accountEmail: FutureBuilder<DatabaseEvent>(
              future: FirebaseDatabase.instance.ref().child("Users").child(widget.uid!).once(),
              builder:(context, AsyncSnapshot<DatabaseEvent> snapshot){
                if (snapshot.hasData) {
                   Map Email = snapshot.data!.snapshot.value as Map;
                  return Text(Email['email']);
                } else {

                  return CircularProgressIndicator(color: Colors.deepOrange);
                }
              }),
            accountName: FutureBuilder<DatabaseEvent>(
            future: FirebaseDatabase.instance.ref().child("Users").child(widget.uid!).once(),
            builder:(context, AsyncSnapshot<DatabaseEvent> snapshot){
                if (snapshot.hasData) {
                    Map Name = snapshot.data!.snapshot.value as Map;
                   return Text(Name['name']);
                 } else {

                return CircularProgressIndicator(color: Colors.deepOrange);
                }
              }
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("http://los40ar00.epimg.net/los40/imagenes/2021/08/18/tecnologia/1629298995_035720_1629299442_noticia_normal.jpg"),
            ), ),
          Divider(
            height: 1,
            thickness: 1,
          ),
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
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.account_circle, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Account'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => account()),
              );
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.info_outline, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('About Active'),
            onTap: () {
              print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.exit_to_app, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Log out'),
            onTap: () {
              FirebaseAuth auth = FirebaseAuth.instance;
              auth.signOut().then((res) {
                Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (context) => SignUp()),
                        (Route<dynamic> route) => false);
                }
              );
            }
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );


  }


}
