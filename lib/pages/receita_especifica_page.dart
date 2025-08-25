import 'package:flutter/material.dart';

class ReceitasListaPage extends StatefulWidget {
  const ReceitasListaPage({super.key});

  @override
  State<ReceitasListaPage> createState() => _ReceitasListaPageState();
}

class _ReceitasListaPageState extends State<ReceitasListaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Receitas')),
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