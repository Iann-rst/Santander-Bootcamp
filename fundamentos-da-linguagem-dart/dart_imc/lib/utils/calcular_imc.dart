double calcularImc(double peso, double altura) {
  if (peso <= 0) {
    throw ArgumentError("O valor do peso não pode ser menor ou igual a zero");
  }
  if (altura <= 0) {
    throw ArgumentError("O valor do peso não pode ser menor ou igual a zero");
  }

  return double.parse((peso / (altura * altura)).toStringAsFixed(2));
}

void resultado(double imc) {
  print("RESULTADO: ");
  switch (imc) {
    case < 16:
      print("Magreza grave");
      break;
    case > 16 && < 17:
      print("Magreza moderada");
      break;
    case > 17 && < 18.5:
      print("Magreza leve");
      break;
    case > 18.5 && < 25:
      print("Saudável");
      break;
    case > 25 && < 30:
      print("Sobrepeso");
      break;
    case > 30 && < 35:
      print("Obesidade Grau I");
      break;
    case > 35 && < 40:
      print("Obesidade Grau II (severa)");
      break;
    default:
      print("Obesidade Grau III (mórbida)");
  }
}
