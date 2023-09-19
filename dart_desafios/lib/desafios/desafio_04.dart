import 'dart:io';

void main() {
  var valorInicial = double.parse(stdin.readLineSync()!);
  var taxaJuros = double.parse(stdin.readLineSync()!);
  var periodo = int.parse(stdin.readLineSync()!);

  var valorFinal = valorInicial;

  for (var i = 0; i < periodo; i++) {
    valorFinal = valorFinal + (valorFinal * taxaJuros);
  }
  print(
      "Valor final do investimento: R\$ ${double.parse(valorFinal.toStringAsFixed(2))}");
}
