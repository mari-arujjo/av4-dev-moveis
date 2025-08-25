import 'package:flutter/material.dart';

class Card2Widget extends StatelessWidget {
  final String titulo;
  final String descricao;
  final VoidCallback? onTap;

  const Card2Widget({
    super.key,
    required this.titulo,
    required this.descricao,
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
