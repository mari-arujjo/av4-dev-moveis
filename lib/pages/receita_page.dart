import 'package:flutter/material.dart';

class ReceitaPage extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String imagem;
  final String tag;

  const ReceitaPage({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.imagem,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: tag,
              child: Image.network(
                imagem,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                descricao,
                style: const TextStyle(fontSize: 16),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
