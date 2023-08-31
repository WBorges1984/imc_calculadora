import 'package:imc_calculadora/classes/pessoa.dart';
import 'package:imc_calculadora/functions/calculo_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculateImc', () {
    Pessoa pessoa1 = Pessoa("Teste", 89, 1.75);
    expect(calcularImc(pessoa1), 29.06);
  });
}
