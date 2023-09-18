import 'package:dart_imc/models/pessoa.dart';
import 'package:dart_imc/utils/calcular_imc.dart' as imc;
import 'package:dart_imc/utils/console.dart';

void execute() {
  print("Sistema de calculo do IMC");
  String nome = Console.lerStringComTexto("Digite o nome da pessoa:");
  double? altura = Console.lerDoubleComTexto("Digite a altura (e.g: 1.70):");
  double? peso = Console.lerDoubleComTexto("Digite o peso (e.g: 70):");

  if (altura != null && peso != null) {
    Pessoa pessoa = Pessoa(nome, peso, altura);
    try {
      double valorIMC = imc.calcularImc(pessoa.getPeso(), pessoa.getAltura());
      print("Valor do IMC: $valorIMC");
      print("");
      imc.resultado(valorIMC);
    } catch (e) {
      print(e.toString());
    }
  } else {
    print('Não foi possível calcular o IMC, confira os valores informados.');
  }
}
