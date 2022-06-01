import 'package:flutter/material.dart';

class editinfousers extends StatefulWidget {
  State<StatefulWidget> createState() => _editinfousersState();
}

class _editinfousersState extends State<editinfousers> {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Active'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        //child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(// Quienes somos
              //alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(30, 50, 20,0),
              child: Container(// Asistencia personalizada
                //alignment: Alignment.centerRight,
                width: 4,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 4,
                  ), //Border.all
                  borderRadius: BorderRadius.circular(18),

                ),
                child: Center(
                  child:
                  Text("¿Quienes somos?",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Roboto')),
                ),
              ),),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("Active es una empresa enfocada al diseño "
                  "de productos IoT en el sector del fitness, "
                  "con los cuales tomarás el control de tus rutinas. "
                  "Por medio de la App podrás disfrutar de todas "
                  "las características que ofrece el dispositivo "
                  "ActiveBro."
                  "",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      fontFamily: 'Roboto')),
            ),
            Padding(// Quienes somos
              //alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Container(// Asistencia personalizada
                //alignment: Alignment.centerRight,
                width: 4,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 4,
                  ), //Border.all
                  borderRadius: BorderRadius.circular(18),

                ),
                child: Center(
                  child:
                  Text("¿Qué ofrecemos?",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: 'Roboto')),
                ),
              ),),
            Padding(// Control estadísticas
              //alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(30, 20, 20, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text("Asistencia personalizada",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Roboto')),
                )),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("ActiveBro te ofrece una retroalimentación en tiempo"
                  " real durante tu actividad física. ¡Sí!, Como un coach personal. "
                  "Solo tienes que sincronizar tu dispositivo"
                  "ActiveBro con los parámetros que se solicitan "
                  "en la sección ENTRENAR, como el tipo de ejericio, carga "
                  "tiempo y una vez comiences, ActiveBro te acompañará "
                  "a lograr tu objetivo"
                  "",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      fontFamily: 'Roboto')),
            ),
            Padding(// Control estadísticas
              //alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(30, 20, 20, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text("Control de tu progreso",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Roboto')),
                )),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                  "Cuando estes realizando el ejericio podrás visualizar en la pantalla"
                      "de la App tus estadísticas, y una vez finalizado, evaluar tu resumen"
                      "y progreso a lo largo del entrenamiento."
                      "Además, podrás ajustar tus rutinas de acuerdo con "
                      "tus actividades diarias, luego de obtener tu plan semanal,"
                      "podrás ubicar las rutinas en el horario que mejor te convenga."
                      "",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      fontFamily: 'Roboto')),
            ),

          ]),
    );
  }
}