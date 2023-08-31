class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  // Getter para o nome
  String getNome() {
    return _nome;
  }

  // Setter para o nome
  void setNome(String novoNome) {
    _nome = novoNome;
  }

  // Getter para o peso
  double getPeso() {
    return _peso;
  }

  // Setter para o peso
  void setPeso(double novoPeso) {
    _peso = novoPeso;
  }

  // Getter para o altura
  double getAltura() {
    return _altura;
  }

  // Setter para o nome
  void setAltura(double novaAltura) {
    _altura = novaAltura;
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  @override
  String toString() {
    return {"nome": _nome, "altura": _altura, "peso": _peso}.toString();
  }
}
