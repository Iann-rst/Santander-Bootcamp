import 'package:diologin/services/gerar_numeros_aleatorios_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  var quantidadeDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DIO - Trilha de Flutter",
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue,
              child: Text(
                "Ações do usuário",
                style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            Container(
              color: Colors.amber,
              child: Text(
                "O número gerado foi: $number",
                style: GoogleFonts.acme(fontSize: 24),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.indigo,
                child: Text(
                  "Foi clicado $quantidadeDeCliques vezes",
                  style: GoogleFonts.acme(fontSize: 24),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Text(
                      "Nome",
                      style: GoogleFonts.acme(fontSize: 24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                    child: Text(
                      "Iann Rodrigues",
                      style: GoogleFonts.acme(fontSize: 24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: Text(
                      "30",
                      style: GoogleFonts.acme(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantidadeDeCliques++;
            number = GerarNumeroAleatorioService.gerarNumeroAleatorio(10);
          });
        },
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
