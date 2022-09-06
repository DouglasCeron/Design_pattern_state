import 'package:design_pattern_state_mario/design_pattern/state/mario_state.dart';

import 'mario_capa.dart';
import 'mario_fogo.dart';
import 'mario_pequeno.dart';

class MarioGrande implements MarioState {
  const MarioGrande();
  @override
  MarioState levarDano() {
    print('Ficou Pequeno');
    return MarioPequeno();
  }

  @override
  MarioState pegarCogumelo() {
    print('Ganhou Pontos');
    return this;
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
