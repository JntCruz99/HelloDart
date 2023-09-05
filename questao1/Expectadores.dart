class Expectadores {
  late int? opiniao;
  late int? idade;

  Expectadores(int? opiniao, int? idade) {
    this.opiniao = opiniao;
    this.idade = idade;
  }

  String opini(int opiniao) {
    String opiniaoExpec = '';

    switch (opiniao) {
      case 1:
        opiniaoExpec = 'regular';
        break;
      case 2:
        opiniaoExpec = 'bom';
        break;
      case 3:
        opiniaoExpec = 'excelente';
        break;
    }

    return opiniaoExpec;
  }
}
