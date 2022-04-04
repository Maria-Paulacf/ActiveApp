import 'package:flutter/material.dart';
import 'package:activebro/Pages/SummProgressPage.dart';
import 'package:activebro/Pages/StartBroPage.dart';
import 'package:activebro/Pages/ProfilePage.dart';

class MainTabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DefaultTabController(
      length: 3,
      child: new Scaffold(
        body: TabBarView(
          children: <Widget>[
            StartBroPage(),
            SummProgressPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: PreferredSize(
          preferredSize: Size(60.0,60.0),
          child: Container(
            height: 60.0,
            child: TabBar(
              labelColor: Theme.of(context).primaryColor,
              labelStyle: TextStyle(fontSize: 10.0),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.list),
                  text: 'Profile',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'Progress',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'Start',
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}