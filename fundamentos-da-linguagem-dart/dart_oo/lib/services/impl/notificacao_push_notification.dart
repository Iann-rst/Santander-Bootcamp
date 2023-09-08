import 'package:dart_oo/classes/pessoa.dart';
import 'package:dart_oo/services/notificacao_interface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push Notification para: ${pessoa.getNome()}");
  }
}
