import 'dart:io';

void main() {
  print("Digite o nome do primeiro cachorro:");
  String nome1 = stdin.readLineSync()!;
  
  print("Digite a data de nascimento do primeiro cachorro (YYYY-MM-DD):");
  DateTime nascimento1 = DateTime.parse(stdin.readLineSync()!);

  Cachorro cachorro1 = Cachorro(nome1, nascimento1);

  print("\nDigite o nome do segundo cachorro:");
  String nome2 = stdin.readLineSync()!;
  
  print("Digite a data de nascimento do segundo cachorro (YYYY-MM-DD):");
  DateTime nascimento2 = DateTime.parse(stdin.readLineSync()!);

  Cachorro cachorro2 = Cachorro(nome2, nascimento2);

  if (cachorro1.maisVelho(cachorro2)) {
    print("\n${cachorro1.nome} é mais velho que ${cachorro2.nome}.");
  } else if (cachorro2.maisVelho(cachorro1)) {
    print("\n${cachorro2.nome} é mais velho que ${cachorro1.nome}.");
  } else {
    print("\n${cachorro1.nome} e ${cachorro2.nome} têm a mesma idade.");
  }
}

class Cachorro {
  String nome;
  DateTime nascimento;

  Cachorro(this.nome, this.nascimento);

  bool maisVelho(Cachorro c) {
    return this.nascimento.isBefore(c.nascimento);
  }
}
