import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late SharedPreferences storage;
  final CHAVE_NOME_USUARIO = "CHAVE_NOME_USUARIO";
  final CHAVE_ALTURA = "CHAVE_ALTURA";
  final CHAVE_RECEBER_NOTIFICACOES = "CHAVE_RECEBER_NOTIFICACOES";
  final CHAVE_MODO_ESCURO = "CHAVE_MODO_ESCURO";

  TextEditingController nomeUsuarioController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String? nomeUsuario;
  double? altura;
  bool receberPushNotification = false;
  bool darkMode = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    storage = await SharedPreferences.getInstance();
    setState(() {
      nomeUsuarioController.text = storage.getString(CHAVE_NOME_USUARIO) ?? '';
      alturaController.text = (storage.getDouble(CHAVE_ALTURA) ?? 0).toString();
      receberPushNotification =
          storage.getBool(CHAVE_RECEBER_NOTIFICACOES) ?? false;
      darkMode = storage.getBool(CHAVE_MODO_ESCURO) ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Configurações"),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: nomeUsuarioController,
                  decoration: InputDecoration(
                    hintText: "Nome do usuário",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: alturaController,
                  decoration: InputDecoration(
                    hintText: "Altura do usuário",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade300,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              SwitchListTile(
                title: const Text("Receber notificações"),
                onChanged: (bool value) {
                  setState(() {
                    receberPushNotification = !receberPushNotification;
                  });
                },
                value: receberPushNotification,
              ),
              SwitchListTile(
                title: const Text("Tema dark"),
                value: darkMode,
                onChanged: (bool value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
              TextButton(
                onPressed: () async {
                  // Fechar o teclado ao salvar
                  FocusManager.instance.primaryFocus?.unfocus();

                  /* 
                  TODO: Caso o usuário coloque uma altura inválida, tem que realizar o tratamento com try-catch
                  */
                  await storage.setDouble(CHAVE_ALTURA,
                      double.tryParse(alturaController.text) ?? 0);

                  await storage.setString(
                      CHAVE_NOME_USUARIO, nomeUsuarioController.text);

                  await storage.setBool(
                      CHAVE_RECEBER_NOTIFICACOES, receberPushNotification);
                  await storage.setBool(CHAVE_MODO_ESCURO, darkMode);
                  Navigator.pop(context);
                },
                child: const Text("Salvar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
