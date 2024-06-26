import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repos/home_repos_impl.dart';
import 'package:bookly_app/feature/search/data/repos/serach_repos_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<API>(
    API(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepositoryImpl>(
    HomeRepositoryImpl(
      getIt<API>(),
    ),
  );
  getIt.registerSingleton<SearchRepositoryImpl>(
    SearchRepositoryImpl(
      getIt<API>(),
    ),
  );
}
