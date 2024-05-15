import 'package:bookly_app/feature/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/feature/home/presentation/view/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const splashRoute = '/';
  static const homeRoute = '/homeView';
  static const bookDetailsRoute = '/BookDetailsView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsRoute,
        builder: (context, state) => const BookDetailsView(),
      )
    ],
  );
}
