import 'package:av4_dev_moveis/card.dart';
import 'package:av4_dev_moveis/card3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReceitasListaPage extends StatefulWidget {
  const ReceitasListaPage({super.key});

  @override
  State<ReceitasListaPage> createState() => _ReceitasListaPageState();
}

class _ReceitasListaPageState extends State<ReceitasListaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sobremesas')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 30, left: 30, bottom: 30),
          child: Column(
            children: [
              Card3Widget(
                titulo: 'Bolo de Chocolate',
                descricao:
                    'Bolo fofinho de chocolate com cobertura cremosa de chocolate e granulado. Perfeito para sobremesa ou lanche da tarde.',
                imagem:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOpYNqHGbyRl3NVZw0vv9UJD_fAvdR30ZLwA&s',
                tag: 'bolo-chocolate',
                onTap: () {
                  context.push(
                    context.namedLocation('ReceitaEspecifica'),
                    extra: {
                      'titulo': 'Bolo de Chocolate',
                      'descricao':
                          'Bolo fofinho de chocolate com cobertura cremosa de chocolate e granulado. Perfeito para sobremesa ou lanche da tarde.',
                      'imagem':
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOpYNqHGbyRl3NVZw0vv9UJD_fAvdR30ZLwA&s',
                      'tag': 'bolo-chocolate',
                    },
                  );
                },
              ),
              CardWidget(
                titulo: 'Pudim de Leite',
                descricao:
                    'Pudim clássico de leite condensado, caramelizado por cima, macio e cremoso.',
                imagem:
                    'https://www.minhareceita.com.br/app/uploads/2024/07/mobile-pudim-de-leite.png',
              ),
              CardWidget(
                titulo: 'Torta de Morango',
                descricao:
                    'Massa crocante, recheio cremoso e morangos frescos por cima.',
                imagem:
                    'https://recipesblob.oetker.com.br/assets/9c6176b2e8cb4edd827495f2b7a0124d/1272x764/torta-mousse-de-morango.webp',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
