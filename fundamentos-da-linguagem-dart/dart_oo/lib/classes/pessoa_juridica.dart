import 'package:dart_oo/classes/pessoa.dart';
import 'package:dart_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  /// Getters & Setters

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "PJ": "Pessoa Juridica",
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "cnpj": _cnpj,
      "TipoNotificação": getTipoNotificacao()
    }.toString();
  }
}
