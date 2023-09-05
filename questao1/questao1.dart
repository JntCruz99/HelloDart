import 'dart:io';
import 'Expectadores.dart';

void main() {
  List<Expectadores> expectadores = [];

  for (var i = 0; i < 20; i++) {
    print("Digite sua idade:");
    String? idade = stdin.readLineSync();
    int? idadeC = int.tryParse(idade ?? "");
    int? opiniaoC;
    do {
      print("Avalie o Filme:(1 para regular - 2 para bom - 3 para excelente)");
      String? opiniao = stdin.readLineSync();
      opiniaoC = int.tryParse(opiniao ?? "");
      if (opiniaoC == null || (opiniaoC < 1 || opiniaoC > 3)) {
        print("Opinião inválida. Por favor, insira (1 para regular - 2 para bom - 3 para excelente).");
      }
    } while (opiniaoC == null || (opiniaoC < 1 || opiniaoC > 3));

    Expectadores expectador = Expectadores(opiniaoC, idadeC);
    expectadores.add(expectador);
  }
  int expexExcelente = 0;
  int qtdExcelente = 0;
  int quantidadeRegular = 0;
  int quantidadeBom = 0;
  for (Expectadores expectador in expectadores) {
    if (expectador.opiniao == 3) {
      expexExcelente += expectador.idade ?? 0;
      qtdExcelente += 1;
    } else if (expectador.opiniao == 1) {
      quantidadeRegular += 1;
    } else if (expectador.opiniao == 2){
      quantidadeBom += 1;
    }
  }
  double mediaIdadesExcelente = qtdExcelente > 0 ? expexExcelente / qtdExcelente : 0.0;
  double porcentagemBom = (quantidadeBom / expectadores.length.toDouble()) * 100;
  print("A média das idades das pessoas que responderam excelente: $mediaIdadesExcelente");
  print("A quantidade das pessoas que responderam regular: $quantidadeRegular");
  print("A porcentagem de pessoas que responderam bom entre todos os expectadores analisados: $porcentagemBom");
}
