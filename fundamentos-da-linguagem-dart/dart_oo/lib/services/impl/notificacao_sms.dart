import 'package:dart_oo/classes/pessoa.dart';
import 'package:dart_oo/services/notificacao_interface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando SMS para: ${pessoa.getNome()}");
  }
}
