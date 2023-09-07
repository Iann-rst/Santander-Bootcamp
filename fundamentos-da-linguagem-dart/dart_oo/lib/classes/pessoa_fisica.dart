import 'package:dart_oo/enum/tipo_notificacao.dart';

import 'pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  /// Getters & Setters

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "PF": "Pessoa Fisica",
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf,
      "TipoNotificação": getTipoNotificacao()
    }.toString();
  }
}
