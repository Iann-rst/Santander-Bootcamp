import 'dart:io';

void main() {
  //Entrada dos tipos de ativos
  var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

  // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }

  ativos.sort();

  for (var i = 0; i < ativos.length; i++) {
    print(ativos[i]);
  }
}
