import 'dart:io';

void main() {
  double valor = double.parse(stdin.readLineSync()!);

  if (valor > 0) {
    print(
        "Deposito realizado com sucesso!\nSaldo atual: R\$ ${valor.toStringAsFixed(2)}");
  } else if (valor == 0) {
    print("Encerrando o programa...");
  } else {
    print("Valor invalido! Digite um valor maior que zero.");
  }
}
