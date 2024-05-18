import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';

abstract class HomeRepos {
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchBestSellerBooks();
}
