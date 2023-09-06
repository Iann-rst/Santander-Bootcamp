import 'Pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  /// Getters & Setters

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf)
      : super(nome, endereco) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "PF": "Pessoa Fisica",
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf
    }.toString();
  }
}
