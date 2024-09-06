import 'dart:io';
import 'package:calculadora_imc/pessoa.dart';

void main() {
  try {
    stdout.write('Digite seu nome: ');
    final nome = stdin.readLineSync()!;

    stdout.write('Digite seu peso (kg): ');
    final peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite sua altura (m): ');
    final altura = double.parse(stdin.readLineSync()!);

    final pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    final imc = pessoa.calcularIMC();

    print('O IMC de $nome é: ${imc.toStringAsFixed(2)}');
  } catch (e) {
    print('Erro: $e');
  }
}