import 'package:dart_oo/classes/Pessoa.dart';

void main(List<String> arguments) {
  var pessoa1 = Pessoa("Iann", "Rua 1");
  print(pessoa1.getNome());
  print(pessoa1.getEndereco());

  print(pessoa1);
}
