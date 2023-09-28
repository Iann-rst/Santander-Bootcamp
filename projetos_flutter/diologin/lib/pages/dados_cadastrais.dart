import 'package:diologin/repositories/linguagens_repository.dart';
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

  LinguagensRepository linguagensRepository = LinguagensRepository();
  var linguagens = [];
  var linguagensSelecionada = [];

  double salarioEscolhido = 0;

  int tempoDeExperiencia = 1;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
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
          child: ListView(
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
              const SizedBox(
                height: 10,
              ),
              const TextLabel(
                texto: "Linguagens preferidas",
              ),
              Column(
                children: linguagens
                    .map(
                      (linguagem) => CheckboxListTile(
                          title: Text(linguagem),
                          value: linguagensSelecionada.contains(linguagem),
                          onChanged: (value) {
                            if (value!) {
                              linguagensSelecionada.add(linguagem);
                            } else {
                              linguagensSelecionada.remove(linguagem);
                            }
                            setState(() {});
                          }),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextLabel(
                texto: "Tempo de experiência",
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton(
                  value: tempoDeExperiencia,
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text("1 ano"),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text("2 anos"),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text("+3 anos"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      tempoDeExperiencia = int.parse(value.toString());
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              TextLabel(
                  texto:
                      "Pretensão Salarial. R\$ ${salarioEscolhido.round().toString()}"),
              Slider(
                min: 0,
                max: 10000,
                value: salarioEscolhido,
                onChanged: (value) {
                  setState(() {
                    salarioEscolhido = value;
                  });
                },
              ),
              TextButton(
                onPressed: () {
                  print(nomeController.text);
                  print(dataNascimento);
                  print(nivelSelecionado);
                  print(linguagensSelecionada);
                  print(tempoDeExperiencia);
                  print(salarioEscolhido.round());
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
