import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    width: double.infinity,
                    child: const Text("Dados cadastrais"),
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    width: double.infinity,
                    child: const Text("Configurações"),
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    width: double.infinity,
                    child: const Text("Termos de uso e privacidade"),
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
