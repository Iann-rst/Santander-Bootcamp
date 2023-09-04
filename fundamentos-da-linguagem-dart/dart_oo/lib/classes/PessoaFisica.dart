class PessoaFisica {
  String _nome = "";
  String _endereco = "";
  String _cpf = "";

  /// Getters & Setters

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf) {
    _nome = nome;
    _endereco = endereco;
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "PF": "Pessoa Fisica",
      "Nome": _nome,
      "Endereço": _endereco,
      "CPF": _cpf
    }.toString();
  }
}
