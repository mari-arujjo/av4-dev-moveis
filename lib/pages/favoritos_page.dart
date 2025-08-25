import 'package:av4_dev_moveis/card2.dart';
import 'package:flutter/material.dart';

class FavoritosPage extends StatefulWidget {
  const FavoritosPage({super.key});

  @override
  State<FavoritosPage> createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favoritos')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 30, left: 30, bottom: 30),
          child: Column(
            children: [
              Card2Widget(
                titulo: 'Lasanha de Carne',
                descricao:
                    'Uma lasanha tradicional feita com camadas de massa, molho de tomate, carne moída refogada e bastante queijo gratinado. Ideal para um almoço em família.',
              ),
              Card2Widget(
                titulo: 'Bolo de Chocolate',
                descricao:
                    'Bolo fofinho de chocolate com cobertura cremosa de chocolate e granulado. Perfeito para sobremesa ou lanche da tarde.',
              ),
              Card2Widget(
                titulo: 'Frango Assado com Ervas',
                descricao:
                    'Frango assado no forno, temperado com alho, alecrim, tomilho e limão, acompanhado de batatas douradas. Uma receita prática e saborosa.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
