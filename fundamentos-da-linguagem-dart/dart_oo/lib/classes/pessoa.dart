import 'package:dart_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  /** Getters & Setters */
  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  Pessoa(String nome, String endereco,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereço": _endereco,
      "TipoNotificação": _tipoNotificacao
    }.toString();
  }
}
