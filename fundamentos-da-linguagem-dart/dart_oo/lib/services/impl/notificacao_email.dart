import 'package:dart_oo/classes/pessoa.dart';
import 'package:dart_oo/services/notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}
