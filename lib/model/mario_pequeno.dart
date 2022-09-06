import 'package:design_pattern_state_mario/design_pattern/state/mario_state.dart';
import 'package:design_pattern_state_mario/model/mario_capa.dart';
import 'package:design_pattern_state_mario/model/mario_fogo.dart';
import 'package:design_pattern_state_mario/model/mario_grande.dart';
import 'package:design_pattern_state_mario/model/mario_morto.dart';

class MarioPequeno implements MarioState {
  const MarioPequeno();
  @override
  MarioState levarDano() {
    print('Morreu');
    return MarioMorto();
  }

  @override
  MarioState pegarCogumelo() {
    print('Ficou Grande');
    return MarioGrande();
  }

  @override
  MarioState pegarFlor() {
    print('Ataque de Fogo');
    return MarioFogo();
  }

  @override
  MarioState pegarPena() {
    print('Pode Voar');
    return MarioCapa();
  }
}
