import 'package:flutter/material.dart';

class StartGame extends StatefulWidget {
  StartGame({
    Key? key,
  }) : super(key: key);

  @override
  _StartGameState createState() => _StartGameState();
}

class _StartGameState extends State<StartGame> {
  late Map data;
  late Widget playertype;
  late Widget aitype;
  late bool startfirst;
  int playerwiningcount = 0;
  int aiwiningcount = 0;
  late bool playerwon = false;
  late bool aiwon = false;
  List<bool> playerclicked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> aiclicked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  bool aiWon() {
    List<bool> aiWiningSituations = [
      (aiclicked[0] && aiclicked[1] && aiclicked[2]),
      (aiclicked[3] && aiclicked[4] && aiclicked[5]),
      (aiclicked[6] && aiclicked[7] && aiclicked[8]),
      (aiclicked[0] && aiclicked[3] && aiclicked[6]),
      (aiclicked[1] && aiclicked[4] && aiclicked[7]),
      (aiclicked[2] && aiclicked[5] && aiclicked[8]),
      (aiclicked[0] && aiclicked[4] && aiclicked[8]),
      (aiclicked[2] && aiclicked[4] && aiclicked[6]),
    ];

    for (var situation in aiWiningSituations) {
      if (situation) {
        return true;
      }
    }
    return false;
  }

  bool playerWon() {
    List<bool> playerWiningSituations = [
      (playerclicked[0] && playerclicked[1] && playerclicked[2]),
      (playerclicked[3] && playerclicked[4] && playerclicked[5]),
      (playerclicked[6] && playerclicked[7] && playerclicked[8]),
      (playerclicked[0] && playerclicked[3] && playerclicked[6]),
      (playerclicked[1] && playerclicked[4] && playerclicked[7]),
      (playerclicked[2] && playerclicked[5] && playerclicked[8]),
      (playerclicked[0] && playerclicked[4] && playerclicked[8]),
      (playerclicked[2] && playerclicked[4] && playerclicked[6]),
    ];
    for (var situation in playerWiningSituations) {
      if (situation) {
        return true;
      }
    }
    return false;
  }

  void ai(int index) {
    setState(() {
      switch (index) {
        case 0:
          if (playerclicked[2] == false && aiclicked[2] == false) {
            aiclicked[2] = true;
          } else if (playerclicked[6] == false && aiclicked[6] == false) {
            aiclicked[6] = true;
          } else if (playerclicked[8] == false && aiclicked[8] == false) {
            aiclicked[8] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 1:
          if (playerclicked[2] == false && aiclicked[2] == false) {
            aiclicked[2] = true;
          } else if (playerclicked[0] == false && aiclicked[0] == false) {
            aiclicked[0] = true;
          } else if (playerclicked[7] == false && aiclicked[7] == false) {
            aiclicked[7] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 2:
          if (playerclicked[0] == false && aiclicked[0] == false) {
            aiclicked[0] = true;
          } else if (playerclicked[1] == false && aiclicked[1] == false) {
            aiclicked[1] = true;
          } else if (playerclicked[8] == false && aiclicked[8] == false) {
            aiclicked[8] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 3:
          if (playerclicked[5] == false && aiclicked[5] == false) {
            aiclicked[5] = true;
          } else if (playerclicked[0] == false && aiclicked[0] == false) {
            aiclicked[0] = true;
          } else if (playerclicked[6] == false && aiclicked[6] == false) {
            aiclicked[6] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 4:
          if (playerclicked[0] == false && aiclicked[0] == false) {
            aiclicked[0] = true;
          } else if (playerclicked[2] == false && aiclicked[2] == false) {
            aiclicked[2] = true;
          } else if (playerclicked[6] == false && aiclicked[6] == false) {
            aiclicked[6] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 5:
          if (playerclicked[2] == false && aiclicked[2] == false) {
            aiclicked[2] = true;
          } else if (playerclicked[8] == false && aiclicked[8] == false) {
            aiclicked[8] = true;
          } else if (playerclicked[3] == false && aiclicked[3] == false) {
            aiclicked[3] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 6:
          if (playerclicked[2] == false && aiclicked[2] == false) {
            aiclicked[2] = true;
          } else if (playerclicked[0] == false && aiclicked[0] == false) {
            aiclicked[0] = true;
          } else if (playerclicked[8] == false && aiclicked[8] == false) {
            aiclicked[8] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 7:
          if (playerclicked[6] == false && aiclicked[6] == false) {
            aiclicked[6] = true;
          } else if (playerclicked[8] == false && aiclicked[8] == false) {
            aiclicked[8] = true;
          } else if (playerclicked[1] == false && aiclicked[1] == false) {
            aiclicked[1] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        case 8:
          if (playerclicked[6] == false && aiclicked[6] == false) {
            aiclicked[6] = true;
          } else if (playerclicked[0] == false && aiclicked[0] == false) {
            aiclicked[0] = true;
          } else if (playerclicked[2] == false && aiclicked[2] == false) {
            aiclicked[2] = true;
          } else {
            for (var i = 0; i < 9; i++) {
              if (playerclicked[i] == false && aiclicked[i] == false) {
                aiclicked[i] = true;
                break;
              }
            }
          }
          break;
        default:
      }
    });
  }

  void clicked(int index) {
    if (playerclicked[index] == false && aiclicked[index] == false) {
      setState(() {
        playerclicked[index] = true;
      });

      if (playerWon()) {
        setState(() {
          playerwiningcount++;
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('you won'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            restart();
                            Navigator.pop(context);
                          });
                        },
                        child: Text("restart"))
                  ],
                );
              });
        });
      } else {
        setState(() {
          ai(index);
        });
        if (aiWon()) {
          setState(() {
            aiwiningcount++;
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('you lose'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              restart();
                              Navigator.pop(context);
                            });
                          },
                          child: Text("restart"))
                    ],
                  );
                });
          });
        }
      }
    }
  }

  void restart() {
    setState(() {
      playerclicked = playerclicked.map((e) => e = false).toList();
      aiclicked = aiclicked.map((e) => e = false).toList();
    });
  }

  void getchild() {
    playertype = SizedBox(
      height: 50,
      width: 50,
      child: Image.asset('images/black_circle.png'),
    );
    aitype = SizedBox(
      height: 50,
      width: 50,
      child: Image.asset('images/cross.png'),
    );

    if (this.data['startFirst']) {
      playertype = SizedBox(
        height: 50,
        width: 50,
        child: Image.asset('images/cross.png'),
      );
      aitype = SizedBox(
        height: 50,
        width: 50,
        child: Image.asset('images/black_circle.png'),
      );
    }
  }

  Widget? getType(int index) {
    if (aiclicked[index] == false && playerclicked[index] == true) {
      return playertype;
    }
    if (aiclicked[index] == true && playerclicked[index] == false) {
      return aitype;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    startfirst = data['startFirst'];
    getchild();

    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'player: ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'AI: ',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Center(
                child: Container(
                  child: Center(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 3,
                      ),
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: GestureDetector(
                            child: getType(index),
                            onTap: () {
                              clicked(index);
                            },
                          ),
                          margin: EdgeInsets.all(2),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  height: 350,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      restart();
                    },
                    icon: Icon(Icons.restart_alt_sharp),
                    label: Text('restart'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
