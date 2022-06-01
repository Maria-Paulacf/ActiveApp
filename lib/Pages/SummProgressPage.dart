import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';

class SummProgressPage extends StatefulWidget {
  State<StatefulWidget> createState() => _SummProgressPageState();
}

class _SummProgressPageState extends State<SummProgressPage> {
  int milisec = 0;
  bool runn = false;
  late Timer timer;

  void iniTimer(){
    if(!runn) {
      timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        this.milisec += 100;
        setState(() {});
      });
      runn = true;
    }
  }

  void StopTimer(){

    timer.cancel();
    runn=false;
  }

  String cronometer(){
    Duration duration = Duration (milliseconds: this.milisec);

    String formatime(int valor){
      return valor >=10 ? "$valor" : "0$valor";
    }

    String hor = formatime(duration.inHours);
    String min = formatime(duration.inMinutes.remainder(60));
    String sec = formatime(duration.inSeconds.remainder(60));
    String mil = formatime(duration.inMilliseconds.remainder(1000));
    return"$hor:$min:$sec:$mil'";
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Progress'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        Text(
          cronometer(),
          style: TextStyle(fontSize: 50),
        ),
              SizedBox(
                height: 10,
              ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
              TextButton.icon(// About us// text
                 label: Text('Start   ',),
                  icon: Icon(Icons.play_arrow),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    alignment: Alignment.center,
                  ),
                  onPressed:  iniTimer
              ),
              TextButton.icon(// About us// text
                    label: Text('Stop    ',),
                    icon: Icon(Icons.stop),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      alignment: Alignment.center,
                    ),
                    onPressed:  StopTimer
                ),
            TextButton.icon(// About us// text
                label: Text('Reset    ',),
                icon: Icon(Icons.wifi_protected_setup),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  alignment: Alignment.center,
                ),
                onPressed:  (){
                  this.milisec = 0;
                  setState(() {

                  });
                }
            ),

            ],
        ),
      ),

    ],
    ),
      ),
    );
  }
}

