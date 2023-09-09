import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  // Quando há métodos statics dentro de uma classe, você pode acessá-los sem precisar instanciar a classe
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida) {
    do {
      var value = lerStringComTexto(texto);
      if (value == valorSaida) {
        return null;
      }
      try {
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }
}
