class ValorNegativoException implements Exception {
  late int x;
  ValorNegativoException(this.x);
  @override
  String toString() {
    return 'Erro valor negativo $x';
  }
}
