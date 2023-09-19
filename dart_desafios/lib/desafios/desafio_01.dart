import 'dart:io';

void main() {
  double saldoAtual = double.parse(stdin.readLineSync()!);
  double valorDeposito = double.parse(stdin.readLineSync()!);
  double valorRetirada = double.parse(stdin.readLineSync()!);

  double saldo = saldoAtual + valorDeposito - valorRetirada;

  print("Saldo atualizado na conta: ${double.parse(saldo.toStringAsFixed(1))}");
}
