import 'dart:convert';
import 'dart:io';

import 'package:imc_calculadora/Exception/Erro_Altura_Null.dart';
import 'package:imc_calculadora/Exception/erro_peso_null.dart';
import 'package:imc_calculadora/classes/pessoa.dart';
import 'package:imc_calculadora/functions/calculo_imc.dart';

void main() {
  print("Digite o nome da pessoa ");
  var lineNome = stdin.readLineSync(encoding: utf8);
  var nome = lineNome ?? "";

  print("Digite o peso da pessoa ");
  var linePeso = stdin.readLineSync(encoding: utf8);
  var peso = double.tryParse(linePeso!);
  if (peso == null) {
    peso = ErroPesoNull().ps;
    throw ErroPesoNull();
  }

  print("Digite a altura da pessoa ");
  var lineAltura = stdin.readLineSync(encoding: utf8);
  var altura = double.tryParse(lineAltura!);
  if (altura == null) {
    throw ErroAlturaNull();
  }
  Pessoa pessoa1 = Pessoa(nome, peso, altura);

  double imc = calcularImc(pessoa1);
  String resposta = obterRespostaIMC(imc);

  print('Pessoa: ${pessoa1.getNome()}');
  print('Tem o IMC de : $imc');
  print('Esta com a saude de  : $resposta');
}
