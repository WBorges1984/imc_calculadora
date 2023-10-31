import 'dart:io';

void main() {
  double valor = double.parse(stdin.readLineSync()!);

  while (valor < 0) {
    print("Valor inválido! Digite um valor maior que zero.");
    valor = double.parse(stdin.readLineSync()!);
  }

  if (valor > 0) {
    print("Depósito realizado com sucesso!");
    print("Saldo atual: R\$ 500.50");
  } else if (valor == 0) {
    print("Encerrando o programa...");
  }
}
