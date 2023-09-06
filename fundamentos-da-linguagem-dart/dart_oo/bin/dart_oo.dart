import 'package:dart_oo/classes/pessoa_fisica.dart';
import 'package:dart_oo/classes/pessoa_juridica.dart';

void main(List<String> arguments) {
  var pessoaFisica = PessoaFisica("Iann R", "Rua 2", "00000000001");
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica("Empresa 1", "Rua 3", "5656565656-1");
  print(pessoaJuridica);
}
