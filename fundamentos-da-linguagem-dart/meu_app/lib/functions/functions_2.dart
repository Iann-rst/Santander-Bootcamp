import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora!");

  print("Informe o primeiro número:");
  var numero1 = double.parse(inputConsole());

  print("Informe o segundo número:");
  var numero2 = double.parse(inputConsole());

  print("Informe a operação matemática (+, -, *, /)");
  var operacao = inputConsole();

  double result = 0;
  switch (operacao) {
    case '+':
      result = sum(numero1, numero2);
      break;
    case '-':
      result = sub(numero1, numero2);
      break;
    case '*':
      result = mult(numero1, numero2);
      break;
    case '/':
      if (numero2 == 0) {
        print("Operação inválida!");
        exit(0);
      } else {
        result = div(numero1, numero2);
      }
      break;
    default:
      print("Operação inválida!");
      exit(0);
  }

  print("Operação solicitada: $operacao");
  print("O resultado da operação é: $result");
}

String inputConsole() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double sum(double num1, double num2) {
  return num1 + num2;
}

double sub(double num1, double num2) {
  return num1 - num2;
}

double mult(double num1, double num2) {
  return num1 * num2;
}

double div(double num1, double num2) {
  return num1 / num2;
}
