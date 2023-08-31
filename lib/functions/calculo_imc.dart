import 'package:imc_calculadora/classes/pessoa.dart';

double calcularImc(Pessoa pessoa) {
  try {
    var peso = pessoa.getPeso();
    if (peso <= 0) {
      throw Exception("Peso inválido.");
    }
    var altura = pessoa.getAltura();

    if (altura <= 0) {
      throw Exception("Altura inválida.");
    }

    var imc = peso / (altura * altura);
    String imcFormat = imc.toStringAsPrecision(4);

    double imcParse = double.parse(imcFormat);
    // ignore: unnecessary_null_comparison
    if (imcParse == null) {
      throw Exception("Erro ao converter IMC para número.");
    }
    return imcParse;
  } catch (e) {
    print("Erro ao calcular IMC: $e");
    return 0.0; // Ou qualquer valor padrão que você desejar
  }
}

String obterRespostaIMC(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "Magreza Moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "Magreza Leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "Saldável";
  } else if (imc >= 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade Grau I";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade Grau II (severa)";
  } else {
    return "Obesidade Grau III (mórbida)";
  }
}
