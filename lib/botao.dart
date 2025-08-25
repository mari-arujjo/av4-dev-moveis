import 'package:flutter/material.dart';

class BotaoWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final String txt;
  final Color cor;
  const BotaoWidget({
    super.key,
    required this.txt,
    required this.cor,
    required this.onPressed,
  });

  @override
  State<BotaoWidget> createState() => _BotaoWidgetState();
}

class _BotaoWidgetState extends State<BotaoWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(widget.cor),
        overlayColor: WidgetStatePropertyAll(const Color.fromARGB(73, 0, 0, 0)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.txt,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
