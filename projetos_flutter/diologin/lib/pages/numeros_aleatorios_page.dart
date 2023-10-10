import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumerosAleatoriosPage extends StatefulWidget {
  const NumerosAleatoriosPage({super.key});

  @override
  State<NumerosAleatoriosPage> createState() => _NumerosAleatoriosPageState();
}

class _NumerosAleatoriosPageState extends State<NumerosAleatoriosPage> {
  int? numeroGerado;

  final numberKey = "@diologin:numero";

  loadData() async {
    final storage = await SharedPreferences.getInstance();

    setState(() {
      numeroGerado = storage.getInt(numberKey);
    });
    print(numeroGerado);
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Gerador de números aleatório")),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Número aleatório gerado:",
              style: TextStyle(
                  color: Colors.red.shade400,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              numeroGerado.toString(),
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var random = Random();
          setState(() {
            numeroGerado = random.nextInt(1000);
          });
          final storage = await SharedPreferences.getInstance();

          await storage.setInt(numberKey, numeroGerado!);
        },
        child: const Icon(Icons.add),
      ),
    ));
  }
}
