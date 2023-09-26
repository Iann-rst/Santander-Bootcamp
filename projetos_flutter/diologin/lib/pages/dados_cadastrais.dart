import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final String title;
  final List<String> dados;

  const InfoPage({
    super.key,
    required this.title,
    required this.dados,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(dados.length.toString()),
        ),
      ),
    );
  }
}
