import 'package:av4_dev_moveis/botao.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              context.push(context.namedLocation('Favoritos'));
            },
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Text('Explore as categorias', style: TextStyle(fontSize: 18)),
              SizedBox(height: 15),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    BotaoWidget(
                      txt: 'Carnes',
                      cor: Colors.deepOrange,
                      onPressed: () {},
                    ),
                    BotaoWidget(
                      txt: 'Massas',
                      cor: Colors.cyan,
                      onPressed: () {},
                    ),
                    BotaoWidget(
                      txt: 'Sobremesas',
                      cor: Colors.deepPurpleAccent,
                      onPressed: () {
                        context.push(context.namedLocation('Receitas'));
                      },
                    ),
                    BotaoWidget(
                      txt: 'Vegetariana',
                      cor: Colors.pink,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Text(
                'Mariana Araújo Silva - TSI 20242158060025',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
