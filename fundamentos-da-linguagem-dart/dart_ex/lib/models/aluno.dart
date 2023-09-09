class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void adicionarNotas(double nota) {
    _notas.add(nota);
  }

  List<double> getNotas() {
    return _notas;
  }

  double retornaMedia() {
    if (_notas.isEmpty) {
      return 0;
    }
    double total = _notas.reduce((value, element) => value + element);
    return total / _notas.length;
  }
}
