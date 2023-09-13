import 'package:dart_testes/dart_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcula o desconto do produto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('Calcula o desconto do produto com porcentagem', () {
    expect(app.calcularDesconto(1000, 20, true), 800);
  });
}
