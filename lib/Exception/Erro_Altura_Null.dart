class ErroAlturaNull implements Exception {
  String error() => "Error ao colher a Altura";

  @override
  String toString() {
    return error();
  }
}
