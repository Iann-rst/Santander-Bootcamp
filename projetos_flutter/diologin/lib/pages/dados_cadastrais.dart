import 'package:diologin/repositories/nivel_repository.dart';
import 'package:diologin/shared/widgets/text_label.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({
    super.key,
  });

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  TextEditingController nomeController = TextEditingController(text: "nome");
  TextEditingController dataNascimentoController = TextEditingController();
  DateTime? dataNascimento;

  NivelRepository nivelRepository = NivelRepository();
  var niveis = [];
  var nivelSelecionado = "";

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meus dados"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextLabel(texto: "Nome"),
              TextField(
                controller: nomeController,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextLabel(texto: "Data de nascimento"),
              TextField(
                controller: dataNascimentoController,
                readOnly: true,
                onTap: () async {
                  var data = await showDatePicker(
                      context: context,
                      initialDate: DateTime(1950, 1, 1),
                      firstDate: DateTime(1950, 1, 1),
                      lastDate: DateTime(2023, 12, 31));
                  if (data != null) {
                    dataNascimentoController.text = data.toString();
                    dataNascimento = data;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const TextLabel(
                texto: "Nível de experiência",
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: niveis
                    .map(
                      (nivel) => RadioListTile(
                          title: Text(nivel.toString()),
                          selected: nivelSelecionado == nivel,
                          value: nivel.toString(),
                          groupValue: nivelSelecionado,
                          onChanged: (value) {
                            setState(() {
                              nivelSelecionado = value.toString();
                            });
                          }),
                    )
                    .toList(),
              ),
              TextButton(
                onPressed: () {
                  print(nomeController.text);
                  print(dataNascimento);
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
