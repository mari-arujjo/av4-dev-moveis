import 'package:av4_dev_moveis/pages/favoritos_page.dart';
import 'package:av4_dev_moveis/pages/home_page.dart';
import 'package:av4_dev_moveis/pages/receita_especifica_page.dart';
import 'package:av4_dev_moveis/pages/receitas_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();
  static String initR = '/home';
  static final _rootNavigatorKey = GlobalKey<NavigatorState>(); 
  static final GoRouter rotas = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initR,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/home',
        name: 'Home',
        builder: (context, state) {
          return HomePage(key: state.pageKey);
        },
      ),
      GoRoute(
        path: '/favoritos',
        name: 'Favoritos',
        builder: (context, state) {
          return FavoritosPage(key: state.pageKey);
        },
      ),
      GoRoute(
        path: '/receitas',
        name: 'Receitas',
        builder: (context, state) {
          return ReceitasListaPage(key: state.pageKey);
        },
      ),
      GoRoute(
        path: '/receitaEspecifica',
        name: 'ReceitaEspecifica',
        builder: (context, state) {
          return ReceitaPage(key: state.pageKey);
        },
      ),
    ]
  );
}