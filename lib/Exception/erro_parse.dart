class ErrorParse implements Exception {
  String error() => "Error ao realizar o parse";

  @override
  String toString() {
    return error();
  }
}
