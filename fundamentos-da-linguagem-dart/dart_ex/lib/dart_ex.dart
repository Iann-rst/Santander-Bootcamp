import 'package:dart_ex/models/aluno.dart';
import 'package:dart_ex/models/console_utils.dart';

void execute() {
  print("Sistema de Notas");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno");
  var aluno = Aluno(nome);

  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair:", "S");
    if (nota != null) {
      aluno.adicionarNotas(nota);
    }
  } while (nota != null);

  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do aluno foi: ${aluno.retornaMedia()}");
}
