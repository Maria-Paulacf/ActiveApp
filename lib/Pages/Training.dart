import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class TrainingPage extends StatefulWidget {
  State<StatefulWidget> createState() => _TrainingPageState();
}



class _TrainingPageState extends State<TrainingPage> {
  String? selectExercise;
  List<String> exercise = [
    'Press francés',
    'Curl zottman',
    'Curl tipo martillo',
    'Extensión tríceps',
    'Patada de tríceps',
  ];
  String? selectweight;
  List<String> weight = [
    '0.5kg',
    '1.0kg',
    '1.5kg',
    '2.0kg',
    '3.0kg',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entrenar'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 20, 20),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        SizedBox(
                          width: 1,
                        ),
                        Expanded(
                          child: Text(
                            'Selecciona Ejercicio',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: exercise
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                        .toList(),
                    value: selectExercise,
                    onChanged: (value) {
                      setState(() {
                        selectExercise = value as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.white,
                    iconDisabledColor: Colors.grey,
                    buttonHeight: 60,
                    buttonWidth: 220,
                    buttonPadding: const EdgeInsets.only(left: 18, right: 18),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.orange,
                    ),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 220,
                    dropdownWidth: 220,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.orangeAccent,
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 20, 20),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        SizedBox(
                          width: 1,
                        ),
                        Expanded(
                          child: Text(
                            'Selecciona Peso',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: weight
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                        .toList(),
                    value: selectweight,
                    onChanged: (value) {
                      setState(() {
                        selectweight = value as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                    iconSize: 14,
                    iconEnabledColor: Colors.white,
                    iconDisabledColor: Colors.grey,
                    buttonHeight: 60,
                    buttonWidth: 220,
                    buttonPadding: const EdgeInsets.only(left: 18, right: 18),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.orange,
                    ),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 220,
                    dropdownWidth: 220,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.orangeAccent,
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(0, 0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.black)
                      )),
                  ),
                  onPressed: () {
                      setState(() {
                      });
                  },
                  child: Text('Sincronizar'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding: const EdgeInsets.all(4),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    //CountUpTimerPage.navigatorPush(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Start',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

