import 'package:design_pattern_state_mario/design_pattern/state/mario_state.dart';

import 'mario_fogo.dart';
import 'mario_pequeno.dart';

class MarioCapa implements MarioState {
  @override
  MarioState levarDano() {
    print('Ficou Pequeno');
    return MarioPequeno();
  }

  @override
  MarioState pegarCogumelo() {
    print('Ganhou Pontos');
    return MarioPequeno();
  }

  @override
  MarioState pegarFlor() {
    print('Ataque de Fogo');
    return MarioFogo();
  }

  @override
  MarioState pegarPena() {
    print('Ganhou Pontos');
    return this;
  }
}
