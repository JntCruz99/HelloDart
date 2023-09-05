import 'dart:io';
import 'Carteira.dart';
import 'Multas.dart';

void main() {
  List<Multas> multas = [];
  multas.add(new Multas("Exesso de velocidade", 125.25));
  multas.add(new Multas("Ultrapassar o sinal vermelho", 85.50));

  List<Multas> multas2 = [];
  multas2.add(new Multas("Mexendo no Celular", 195.25));
  multas2.add(new Multas("Ultrapassar o sinal vermelho", 85.50));

  Carteira carteira1 = new Carteira("Jonatas", 124, 23, multas);
  Carteira carteira2 = new Carteira("Ana", 135, 47, multas);
  Carteira carteira3 = new Carteira("Fernando", 958, 32, multas2);

  List<Carteira> carteiras = [carteira1, carteira2, carteira3];

  int? numCarteiraC;
  do {
    print("Buscar numero da carteira");
    print("digite o numero:");
    String? numCarteira = stdin.readLineSync();
    numCarteiraC = int.tryParse(numCarteira ?? '');

    int qtd = 0;

    for (Carteira carteira in carteiras) {
      if (carteira.numero == numCarteiraC) {
        print("Buscando carteira...");
        print(carteira);
        int qtdMultas = carteira.qtdMultas();
        double total = carteira.totalMultas();
        print("Quantidade de multas: $qtdMultas");
        print("TOTAL A PAGAR: RS$total");
        qtd++;
        break;
      }
    }
    if(qtd == 0){
      print("Carteira Não encontrada...");
    }

  } while (numCarteiraC == null || (numCarteiraC < 1 || numCarteiraC > 4327));
}
