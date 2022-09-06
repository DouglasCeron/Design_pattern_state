import 'package:design_pattern_state_mario/design_pattern/state/mario_state.dart';

class MarioMorto implements MarioState {
  const MarioMorto();
  @override
  MarioState? levarDano() {
    return null;
  }

  @override
  MarioState? pegarCogumelo() {
    return null;
  }

  @override
  MarioState? pegarFlor() {
    return null;
  }

  @override
  MarioState? pegarPena() {
    return null;
  }
}
