import 'package:flutter/material.dart';

class Card3Widget extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String imagem; // URL ou asset
  final String tag; // Hero tag
  final VoidCallback? onTap;

  const Card3Widget({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.imagem,
    required this.tag,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 222, 180),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(59, 0, 0, 0),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: tag,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.network(
                  imagem,
                  height: 110,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                titulo,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(descricao, style: const TextStyle(fontSize: 14)),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
