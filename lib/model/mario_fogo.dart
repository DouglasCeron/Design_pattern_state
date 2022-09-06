import 'package:design_pattern_state_mario/design_pattern/state/mario_state.dart';

import 'mario_capa.dart';
import 'mario_pequeno.dart';

class MarioFogo implements MarioState {
  const MarioFogo();
  @override
  MarioState levarDano() {
    print('Ficou Pequeno');
    return MarioPequeno();
  }

  @override
  MarioState pegarCogumelo() {
    print('Ganhou Pontos');
    return MarioFogo();
  }

  @override
  MarioState pegarFlor() {
    print('Ganhou Pontos');
    return this;
  }

  @override
  MarioState pegarPena() {
    print('Pode Voar');
    return MarioCapa();
  }
}
