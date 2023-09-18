import 'package:dart_imc/utils/calcular_imc.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcular o IMC', () {
    expect(app.calcularImc(68, 1.71), equals(23.26));
  });

  test('Não deve ser possível calcular IMC com um valor de peso inválido', () {
    expect(
        () => app.calcularImc(0, 1.71), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Não deve ser possível calcular IMC com um valor de altura inválido',
      () {
    expect(() => app.calcularImc(68, 0), throwsA(TypeMatcher<ArgumentError>()));
  });
}
