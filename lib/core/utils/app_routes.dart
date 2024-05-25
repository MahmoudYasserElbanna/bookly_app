import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repos_impl.dart';
import 'package:bookly_app/feature/home/presentation/manager/relevance_books_cubit/relevance_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/feature/home/presentation/view/home_view.dart';
import 'package:bookly_app/feature/search/presentation/data/repos/serach_repos_impl.dart';
import 'package:bookly_app/feature/search/presentation/manager/cubit/search_result_cubit.dart';
import 'package:bookly_app/feature/search/presentation/view/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        builder: (context, state) => BlocProvider(
          create: (BuildContext context) {
            return RelevanceBooksCubit(getIt<HomeRepositoryImpl>());
          },
          child: BookDetailsView(
            bookModel: state.extra! as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: searchViewRoute,
        builder: (context, state) => BlocProvider(
          child: const SearchView(),
          create: (context) {
            return SearchResultCubit(getIt<SearchRepositoryImpl>());
          },
        ),
      )
    ],
  );
}
