import 'package:design_pattern_state_mario/design_pattern/state/mario_state.dart';
import 'package:design_pattern_state_mario/model/mario_capa.dart';
import 'package:design_pattern_state_mario/model/mario_fogo.dart';
import 'package:design_pattern_state_mario/model/mario_grande.dart';
import 'package:design_pattern_state_mario/model/mario_morto.dart';
import 'package:design_pattern_state_mario/model/mario_pequeno.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  MarioState? state;
  String? image = 'assets/small_mario.png';

  HomeController() {
    state = const MarioPequeno();
  }

  void pegarCogumelo() {
    state = state?.pegarCogumelo() ?? const MarioPequeno().pegarCogumelo();
    changeMarioImage();
  }

  void pegarflor() {
    state = state?.pegarFlor() ?? const MarioPequeno().pegarFlor();
    changeMarioImage();
  }

  void pegarPena() {
    state = state?.pegarPena() ?? const MarioPequeno().pegarPena();
    changeMarioImage();
  }

  void levarDano() {
    state = state?.levarDano();
    changeMarioImage();
  }

  void changeMarioImage() {
    if (state is MarioPequeno) {
      image = 'assets/small_mario.png';
    } else if (state is MarioFogo) {
      image = 'assets/fire_mario.png';
    } else if (state is MarioCapa) {
      image = 'assets/mario_flying.png';
    } else if (state is MarioGrande) {
      image = 'assets/big_mario.png';
    } else if (state is MarioPequeno || state is MarioMorto) {
      image = 'assets/dead_mario.png';
    }
    notifyListeners();
  }
}
