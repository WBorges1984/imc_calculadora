class ErroPesoNull implements Exception {
  var ps = 0.0;
  String error() => ("Error ao colher o Peso");

  @override
  String toString() {
    return error();
  }
}
