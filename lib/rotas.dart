import 'package:av4_dev_moveis/pages/favoritos_page.dart';
import 'package:av4_dev_moveis/pages/home_page.dart';
import 'package:av4_dev_moveis/pages/receita_lista_page.dart';
import 'package:av4_dev_moveis/pages/receita_page.dart';
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
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: HomePage(key: state.pageKey),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/favoritos',
        name: 'Favoritos',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: FavoritosPage(key: state.pageKey),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/receitas',
        name: 'Receitas',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: ReceitasListaPage(key: state.pageKey),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
      GoRoute(
        path: '/receitaEspecifica',
        name: 'ReceitaEspecifica',
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return CustomTransitionPage(
            key: state.pageKey,
            child: ReceitaPage(
              titulo: extra['titulo'],
              descricao: extra['descricao'],
              imagem: extra['imagem'],
              tag: extra['tag'],
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),
    ],
  );
}
