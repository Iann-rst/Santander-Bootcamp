class PessoaJuridica {
  String _nome = "";
  String _endereco = "";
  String _cnpj = "";

  /// Getters & Setters

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  String getCnpj() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj) {
    _nome = nome;
    _endereco = endereco;
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "PJ": "Pessoa Juridica",
      "Nome": _nome,
      "Endereço": _endereco,
      "cnpj": _cnpj
    }.toString();
  }
}
