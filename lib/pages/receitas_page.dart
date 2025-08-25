import 'package:flutter/material.dart';

class ReceitaPage extends StatefulWidget {
  const ReceitaPage({super.key});

  @override
  State<ReceitaPage> createState() => _ReceitaPageState();
}

class _ReceitaPageState extends State<ReceitaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Receita')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [

            ],
          )
        ),
      ),
    );
  }
}