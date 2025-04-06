enum Escolha {
  pedra,
  papel,
  tesoura;

  String get nome {
    switch (this) {
      case Escolha.pedra:
        return 'pedra';
      case Escolha.papel:
        return 'papel';
      case Escolha.tesoura:
        return 'tesoura';
    }
  }

  String get imagem {
    return 'assets/${nome}.png';
  }
}
