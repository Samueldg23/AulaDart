import 'package:apm_251_pr01_samuelduarte/models/escolha.dart';

String verificarResultado(Escolha jogador, Escolha maquina) {
  if (jogador == maquina) {
    return 'Empate!';
  }

  if ((jogador == Escolha.pedra && maquina == Escolha.tesoura) ||
      (jogador == Escolha.papel && maquina == Escolha.pedra) ||
      (jogador == Escolha.tesoura && maquina == Escolha.papel)) {
    return 'Você venceu!';
  }

  return 'Você perdeu!';
}
