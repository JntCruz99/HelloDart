class Multas{
  late String tipo;
  late double valor;
  
  Multas(String tipo, double valor){
    this.tipo = tipo;
    this.valor = valor;
  }

  String toString() {
    return '\n{\n tipo: $tipo,\n valor: $valor }\n';
  }
}