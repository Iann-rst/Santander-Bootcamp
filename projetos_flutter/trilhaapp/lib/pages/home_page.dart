import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/gerar_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DIO - Trilha de Flutter",
        ),
      ),
      body: Center(
        child: Text(
          number.toString(),
          style: GoogleFonts.acme(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number = GerarNumeroAleatorioService.gerarNumeroAleatorio(10);
          });
        },
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
