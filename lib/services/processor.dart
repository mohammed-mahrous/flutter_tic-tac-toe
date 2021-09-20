import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Processor extends ChangeNotifier {
  Map data = {};
  bool startfirst = false;
  int playerwiningcount = 0;
  int aiwiningcount = 0;
  bool playerwon = false;
  bool aiwon = false;
  List<bool> playerclicked = [
    true,
    true,
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
  late List<bool> playerWiningSituations;
  late List<bool> aiWiningSituations;

  Processor() {
    playerWiningSituations = [
      (playerclicked[0] && playerclicked[1] && playerclicked[2]),
      (playerclicked[3] && playerclicked[4] && playerclicked[5]),
      (playerclicked[6] && playerclicked[7] && playerclicked[8]),
      (playerclicked[0] && playerclicked[3] && playerclicked[6]),
      (playerclicked[1] && playerclicked[4] && playerclicked[7]),
      (playerclicked[2] && playerclicked[5] && playerclicked[8]),
      (playerclicked[0] && playerclicked[4] && playerclicked[8]),
      (playerclicked[2] && playerclicked[4] && playerclicked[6]),
    ];

    aiWiningSituations = [
      (aiclicked[0] && aiclicked[1] && aiclicked[2]),
      (aiclicked[3] && aiclicked[4] && aiclicked[5]),
      (aiclicked[6] && aiclicked[7] && aiclicked[8]),
      (aiclicked[0] && aiclicked[3] && aiclicked[6]),
      (aiclicked[1] && aiclicked[4] && aiclicked[7]),
      (aiclicked[2] && aiclicked[5] && aiclicked[8]),
      (aiclicked[0] && aiclicked[4] && aiclicked[8]),
      (aiclicked[2] && aiclicked[4] && aiclicked[6]),
    ];
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
    notifyListeners();
  }

  void restart() {
    playerclicked = playerclicked.map((e) => e = false).toList();
    aiclicked = aiclicked.map((e) => e = false).toList();
    notifyListeners();
  }
}
