import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String difficulty = 'easy';
  String mode = 'single player';
  bool crosschecked = false;
  bool circlechecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue[300]!;
      }
      return Colors.red;
    }

    return Scaffold(
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          padding: EdgeInsets.all(20),
          color: Colors.blue[500],
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('defficulty:'),
                    SizedBox(
                      width: 50,
                    ),
                    Text('mode:'),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: DropdownButton(
                        icon: Icon(Icons.arrow_downward_sharp),
                        value: difficulty,
                        onChanged: (String? newvalue) {
                          setState(() {
                            difficulty = newvalue!;
                          });
                        },
                        items: ['easy', 'normal', 'hard']
                            .map((d) => DropdownMenuItem(
                                  child: Text(d),
                                  value: d,
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 120,
                      child: DropdownButton(
                        icon: Icon(Icons.arrow_downward_sharp),
                        value: mode,
                        onChanged: (String? newvalue) {
                          setState(() {
                            mode = newvalue!;
                          });
                        },
                        items: ['single player', 'two players']
                            .map((d) => DropdownMenuItem(
                                  child: Text(d),
                                  value: d,
                                ))
                            .toList(),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('choose player1 type:'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            child: Image.asset(
                              'images/cross.png',
                              color: Colors.black,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(5),
                            child: Image.asset(
                              'images/black_circle.png',
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: crosschecked,
                        onChanged: (bool? value) {
                          setState(() {
                            crosschecked = value!;
                            circlechecked = false;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: circlechecked,
                        onChanged: (bool? value) {
                          setState(() {
                            circlechecked = value!;
                            crosschecked = false;
                          });
                        },
                      ),
                    ])
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Map data = {
                            'mode': mode,
                            'difficulty': difficulty,
                            'startFirst': crosschecked
                          };
                          // debugPrint(data.toString());
                          Navigator.of(context)
                              .pushNamed('/play', arguments: data);
                        },
                        icon: Icon(Icons.arrow_forward_sharp),
                        label: Text('play')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
