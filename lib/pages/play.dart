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
  int playerwiningcount = 0;
  int aiwiningcount = 0;
  List<bool> playerclicked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
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
    false
  ];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    getchild(data);
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
                    'player: $playerwiningcount',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'AI: $aiwiningcount',
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
                            child: child(index),
                            onTap: () {
                              if (aiclicked[index] == false) {
                                setState(() {
                                  playerclicked[index] = true;
                                  ai(index);
                                });
                              }
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
                      List<bool> newplayer =
                          playerclicked.map((e) => e = false).toList();
                      List<bool> newai =
                          aiclicked.map((e) => e = false).toList();
                      aiclicked.map((e) => e = false);
                      setState(() {
                        playerclicked = newplayer;
                        aiclicked = newai;
                      });
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

  void ai(int index) {
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
  }

  void getchild(data) {
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

    if (data['startFirst']) {
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

  Widget? child(int index) {
    if (aiclicked[index] == false && playerclicked[index] == true) {
      return playertype;
    }
    if (aiclicked[index] == true && playerclicked[index] == false) {
      return aitype;
    }
    return null;
  }
}
