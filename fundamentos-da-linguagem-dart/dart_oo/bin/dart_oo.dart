import 'package:dart_oo/classes/Pessoa.dart';
import 'package:dart_oo/classes/PessoaFisica.dart';
import 'package:dart_oo/classes/PessoaJuridica.dart';

void main(List<String> arguments) {
  var pessoa1 = Pessoa("Iann", "Rua 1");
  print(pessoa1.getNome());
  print(pessoa1.getEndereco());
  print(pessoa1);

  var pessoaFisica = PessoaFisica("Iann R", "Rua 2", "00000000001");
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica("Empresa 1", "Rua 3", "5656565656-1");
  print(pessoaJuridica);
}
