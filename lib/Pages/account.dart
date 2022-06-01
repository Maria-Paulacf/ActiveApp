import 'package:activebro/Pages/UserDataRegis.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class account extends StatefulWidget {
  State<StatefulWidget> createState() => _accountState();
}

class _accountState extends State<account>  {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Account'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          minRadius: 60.0,
                          child: CircleAvatar(
                            radius: 70.0,
                            backgroundImage:
                            NetworkImage("http://los40ar00.epimg.net/los40/imagenes/2021/08/18/tecnologia/1629298995_035720_1629299442_noticia_normal.jpg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Maria Carreño',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize:30 ,
                      ),
                    ),
                    Text(
                      'maria.paufer14@gmail.com',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.orangeAccent,
                              child: ListTile(
                                title: Text(
                                  'Personal information',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(// INFORMATION
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  'Peso',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                                subtitle: Text(
                                  '54 kg',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide( //                   <--- left side
                                    color: Colors.black12,
                                    width: 1,),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  'Altura',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                                subtitle: Text(
                                  '1.67 m', // -------------------------------------
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 0.3,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(// INFORMATION
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  'Edad',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                                subtitle: Text(
                                  '54 kg',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide( //                   <--- left side
                                    color: Colors.black12,
                                    width: 1,),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  'Altura',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                                subtitle: Text(
                                  '1.67 m', // -------------------------------------
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextButton.icon(// About us// text
                        label: Text('Edit information  ',),
                        icon: Icon(Icons.edit),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          alignment: Alignment.bottomLeft,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserDataPage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}

