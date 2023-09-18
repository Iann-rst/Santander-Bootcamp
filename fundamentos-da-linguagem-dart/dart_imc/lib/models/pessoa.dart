class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  String getNome() {
    return _nome;
  }

  double getAltura() {
    return _altura;
  }

  double getPeso() {
    return _peso;
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Altura": _altura, "Peso": _peso}.toString();
  }
}
