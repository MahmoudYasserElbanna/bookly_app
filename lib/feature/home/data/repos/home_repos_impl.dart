import 'dart:ui';

import 'package:bookly_app/core/errors/errors.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepos {
  final API apiService;
  HomeRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // try {
    //   return right();
    // } catch (e) {
    //   return left(ServerFailure());
    // }
    throw UnimplementedError();
  }
}
