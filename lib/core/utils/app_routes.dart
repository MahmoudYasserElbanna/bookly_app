import 'package:bookly_app/feature/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/feature/home/presentation/view/home_view.dart';
import 'package:bookly_app/feature/search/presentation/view/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/view/splash_view.dart';

import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const splashViewRoute = '/';
  static const homeViewRoute = '/homeView';
  static const bookDetailsViewRoute = '/bookDetailsView';
  static const searchViewRoute = '/searchView';
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchViewRoute,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
