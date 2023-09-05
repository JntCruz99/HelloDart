import 'Multas.dart';

class Carteira {
  late String nome;
  late int numero;
  late int idade;
  late List<Multas> multas = [];

  Carteira(String nome,int numero, int idade, List<Multas> multas) {
    this.nome = nome;
    this.numero = numero;
    this.idade = idade;
    this.multas = multas;
  }

  double totalMultas(){
    double totalMultas = 0;
    for (Multas multa in multas) {
      totalMultas += multa.valor;
    }
    return totalMultas;
  }

  int qtdMultas(){
    return multas.length;
  }
  String toString() {
    return 'Carteira {\n nome: $nome,\n numero da carteira: $numero,\n idade: $idade,\n multas: $multas \n}';
  }

}
